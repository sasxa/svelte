<script lang="ts">
  import PerspectiveCard from "./card-perspective-hover.svelte";
</script>

<PerspectiveCard rotate={5}>
  <div class="form">
    <input type="text" id="xxx" />
    <label for="xxx"> testing... </label>

    <button>xxx</button>
  </div>
</PerspectiveCard>
<PerspectiveCard>
  <img src="http://unsplash.it/320/180" alt="" />
</PerspectiveCard>

<style lang="scss">
  :global(.card) {
  // width: 16rem;
  height: 9rem;
  // margin: 1rem;
  padding: 0.25rem;

  display: flex;
  transition: box-shadow 200ms;
  background-color: #ddd;

  &:not(.hover) {
    transition: box-shadow 200ms, transform 300ms ease;
  }

  &:hover {
    box-shadow: 0 0 5px rgba(black, 0.5);
  }

  .form {
    display: flex;
    flex-direction: column;
    border: 1px dashed;
    padding: 1rem;
    width: 100%;
    height: 100%;
  }
  img {
    width: 100%;
  }
}

</style>
