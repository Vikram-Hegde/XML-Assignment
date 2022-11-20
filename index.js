const btn = document.querySelector(".btn_toggle");
const table = document.querySelector(".table");
const cards = document.querySelector(".cards");
const card = document.querySelectorAll(".card");
let toggled = false;
cards.classList.toggle("hidden");
cards.classList.toggle("fade-out");
btn.addEventListener("click", toggle);
function toggle() {
  toggled = !toggled;
  if (toggled) {
    table.classList.toggle("fade-out");
    setTimeout(() => {
      table.classList.toggle("hidden");
      cards.classList.toggle("hidden");
      cards.classList.toggle("fade-out");
    }, 800);
  } else {
    cards.classList.toggle("fade-out");
    setTimeout(() => {
      console.log("hello there");
      cards.classList.toggle("hidden");
      table.classList.toggle("hidden");
      table.classList.toggle("fade-out");
    }, 800);
  }
}
