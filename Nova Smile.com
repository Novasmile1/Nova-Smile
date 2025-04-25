<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Nova Smile</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      direction: ltr;
    }

    .top-bar {
      background-color: white;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px 40px;
      font-size: 14px;
      border-bottom: 1px solid #ccc;
    }

    .top-left {
      display: flex;
      align-items: center;
      gap: 20px;
    }

    .top-left span {
      display: flex;
      align-items: center;
      gap: 5px;
    }

    .top-left img {
      width: 18px;
      height: 18px;
    }

    .top-right {
      display: flex;
      align-items: center;
      gap: 15px;
    }

    .top-right img {
      width: 20px;
      height: 20px;
      cursor: pointer;
    }

    .nav-bar {
      background-color: #007acc;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 15px 40px;
    }

    .nav-bar img.logo {
      height: 50px;
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 40px;
    }

    .nav-links a {
      text-decoration: none;
      color: white;
      font-weight: 500;
      font-size: 16px;
    }

    .nav-links a:hover {
      text-decoration: underline;
    }

    .language-switch {
      display: flex;
      gap: 15px;
    }

    .language-switch button {
      background: white;
      color: #007acc;
      border: none;
      padding: 6px 10px;
      border-radius: 4px;
      cursor: pointer;
      font-weight: bold;
    }

    section {
      padding: 60px 40px;
      max-width: 900px;
      margin: auto;
    }

    section h2 {
      font-size: 26px;
      margin-bottom: 20px;
      color: #007acc;
    }

    section p {
      font-size: 17px;
      line-height: 1.6;
      color: #333;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 15px;
      margin-top: 20px;
    }

    input, textarea {
      padding: 12px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 6px;
    }

    button[type="submit"] {
      padding: 12px;
      background-color: #007acc;
      color: #fff;
      border: none;
      border-radius: 6px;
      font-size: 16px;
      cursor: pointer;
    }

    button[type="submit"]:hover {
      background-color: #005e99;
    }

    footer {
      text-align: center;
      padding: 30px 20px;
      background-color: #f5f5f5;
      color: #555;
      font-size: 14px;
      margin-top: 40px;
    }
  </style>
</head>
<body>

  <!-- Üst Bilgi -->
  <div class="top-bar">
    <div class="top-left">
      <span>📞 ‪+90 (530) 323 41 32‬</span>
      <span>
        <img src="whatsapp.png" alt="WhatsApp" />
        <a href="https://wa.me/905303234132" target="_blank">Buradan ulaşın</a>
      </span>
    </div>
    <div class="top-right">
      <img src="facebook.png" alt="Facebook">
      <img src="instagram.png" alt="Instagram">
      <img src="twitter.png" alt="Twitter">
      <img src="youtube.png" alt="YouTube">
    </div>
  </div>

  <!-- Menü -->
  <div class="nav-bar">
    <img src="18ki93.jpg" alt="Nova Smile Logo" class="logo">
    <div class="nav-links">
      <a href="#iletisim" data-key="iletisim">İletişim</a>
      <a href="#hizmetler" data-key="hizmetler">Hizmetler</a>
      <a href="#yorumlar" data-key="yorumlar">Yorumlar</a>
      <a href="#hakkimizda" data-key="hakkimizda">Hakkımızda</a>
    </div>
    <div class="language-switch">
      <button onclick="setLanguage('tr')">TR</button>
      <button onclick="setLanguage('en')">EN</button>
      <button onclick="setLanguage('ar')">AR</button>
    </div>
  </div>

  <!-- Bölümler -->
  <section id="iletisim">
    <h2 data-key="iletisim">İletişim</h2>
    <form>
      <input type="text" placeholder="Adınız" />
      <input type="email" placeholder="E-posta" />
      <textarea rows="4" placeholder="Mesajınız"></textarea>
      <button type="submit">Gönder</button>
    </form>
  </section>

  <section id="hizmetler">
    <h2 data-key="hizmetler">Hizmetler</h2>
    <p data-key="hizmetlerText">Nova Smile olarak diş beyazlatma, estetik diş hekimliği, implant, ortodonti ve diş temizliği gibi birçok modern hizmet sunuyoruz.</p>
  </section>

  <section id="yorumlar">
    <h2 data-key="yorumlar">Yorumlar</h2>
    <p>"Diş fobimi yendim, ekip mükemmel." – Elif G.</p>
    <p>"Nova Smile sayesinde tekrar özgürce gülüyorum." – Mehmet Y.</p>
  </section>

  <section id="hakkimizda">
    <h2 data-key="hakkimizda">Hakkımızda</h2>
    <p data-key="hakkimizdaText">Nova Smile; teknolojiyi, hijyeni ve hasta memnuniyetini merkeze alarak kurulmuş modern bir diş kliniğidir.</p>
  </section>

  <footer>
    &copy; 2025 Nova Smile | Tüm Hakları Saklıdır.
  </footer>

  <script>
    const translations = {
      en: {
        iletisim: "Contact",
        hizmetler: "Services",
        yorumlar: "Reviews",
        hakkimizda: "About Us",
        hizmetlerText: "At Nova Smile, we offer modern services like teeth whitening, implants, orthodontics and more.",
        hakkimizdaText: "Nova Smile is a modern clinic focused on technology, hygiene and patient satisfaction."
      },
      ar: {
        iletisim: "اتصال",
        hizmetler: "الخدمات",
        yorumlar: "المراجعات",
        hakkimizda: "معلومات عنا",
        hizmetlerText: "نوفا سمايل تقدم خدمات حديثة مثل تبييض الأسنان وزراعة الأسنان والتقويم والمزيد.",
        hakkimizdaText: "نوفا سمايل هي عيادة حديثة تركز على التكنولوجيا والنظافة ورضا المرضى."
      },
      tr: {
        iletisim: "İletişim",
        hizmetler: "Hizmetler",
        yorumlar: "Yorumlar",
        hakkimizda: "Hakkımızda",
        hizmetlerText: "Nova Smile olarak diş beyazlatma, estetik diş hekimliği, implant, ortodonti ve diş temizliği gibi birçok modern hizmet sunuyoruz.",
        hakkimizdaText: "Nova Smile; teknolojiyi, hijyeni ve hasta memnuniyetini merkeze alarak kurulmuş modern bir diş kliniğidir."
      }
    };

    function setLanguage(lang) {
      document.querySelectorAll("[data-key]").forEach(el => {
        const key = el.getAttribute("data-key");
        el.textContent = translations[lang][key];
      });

      document.body.dir = (lang === "ar") ? "rtl" : "ltr";
    }
  </script>

</body>
</html>
