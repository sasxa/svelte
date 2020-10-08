<script lang="ts">
export let rotate: number | string = 20;

let el: HTMLElement;

function offsetFromCenter(e: MouseEvent) {
  const rect = el.getBoundingClientRect();

  const width = rect.width;
  const height = rect.height;

  const eventX = e.clientX - rect.left;
  const eventY = e.clientY - rect.top;

  const offsetX = (eventX - width / 2) / width;
  const offsetY = (eventY - height / 2) / height;

  return [offsetX, offsetY];
}

const root = (node: HTMLElement) => {
  el = node;
};

const update = (e: MouseEvent) => {
  const [offsetX, offsetY] = offsetFromCenter(e);

  const rotateY = +rotate * offsetX;
  const rotateX = -1 * +rotate * offsetY;

  el.style.transform = `perspective(500px) rotateX(${rotateX}deg) rotateY(${rotateY}deg)`;
};

const start = (e: MouseEvent) => {
  el.classList.add("hover");
  el.style.transform = `perspective(500px) rotateX(0deg) rotateY(0deg)`;
};

const stop = (e: MouseEvent) => {
  el.classList.remove("hover");
  el.style.transform = `perspective(500px) scale(1) rotateX(0deg) rotateY(0deg)`;
};
</script>

<div
  class="card"
  use:root
  on:mousemove={update}
  on:mouseenter={start}
  on:mouseleave={stop}>
  <slot />
</div>

<style lang="scss">
.card {
  transform-origin: center center;
}
</style>
