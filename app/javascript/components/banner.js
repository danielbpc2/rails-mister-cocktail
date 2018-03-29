import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["lets get Drunk Bitches!!","Cock in the Tail", "Cocktails"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
