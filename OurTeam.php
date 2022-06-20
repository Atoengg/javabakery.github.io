<?php 
require_once 'config/config.php';

if (isset($_SESSION["user"])) {
  $id = $_SESSION["user"];
  $result = query("SELECT * FROM users WHERE id_user = $id")[0];
  if ($result['roles'] == 'ADMIN') {
    header("Location: admin");
  } elseif($result["roles"] == 'OWNER') {
    header("Location: owner");
  }
}

if (isset($_SESSION["driver"])) {
  header("Location: driver");
} 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>OurTeam | Java Bakery & Cake</title>

    <link rel="icon" href="imagesz/logo new.png">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <link href="assets/style/Main.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./assets/style/OurTeam.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
</head>
<body>
    <nav
      class="navbar navbar-expand-lg navbar-light navbar-store fixed-top navbar-fixed-top "
      data-aos="fade-down">
      <div class="container">
        <a href="index.php" class="navbar-brand" title="">
          <img src="imagesz/logo new.png" class="w-25" alt="logo" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collpase navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="index.php" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="products.php" class="nav-link">All Products</a>
                </li>
                <li class="nav-item">
                    <a href="about.php" class="nav-link">About</a>
                </li>
                <li class="nav-item active">
                    <a href="OurTeam.php" class="nav-link">Our Team</a>
                </li>
                <?php
                if (!isset($_SESSION["login"]) && !isset($_SESSION["user"])) : ?>
                <li class="nav-item">
                    <a href="register.php" class="nav-link">Daftar</a>
                </li>
                <li class="nav-item">
                    <a
                    href="login.php"
                    class="btn btn-success nav-link px-4 text-black"
                    >Masuk</a
                    >
                </li>
                <?php else: ?>
                <li class="nav-item dropdown">
                    <?php 
                    $id = $_SESSION["user"];
                    $user = query("SELECT * FROM users WHERE id_user = $id")[0];
                    ?>
                    <a
                        href="#"
                        class="nav-link font-weight-bold"
                        id="navbarDropdown"
                        role="button"
                        data-toggle="dropdown"
                    >
                        <!-- <img
                        src="../assets/images/user_pc.png"
                        alt="profile"
                        class="rounded-circle mr-2 profile-picture"
                        /> -->
                        Hi, <?= $user["name"]; ?>
                    </a>
                    <div class="dropdown-menu">
                        <?php if ($user["roles"] == 'ADMIN') : ?>
                            <a href="admin" class="dropdown-item">
                            Dashboard
                            </a>
                        <?php else : ?>
                            <a href="user" class="dropdown-item">
                            Dashboard
                            </a>
                        <?php endif; ?>
                        <div class="dropdown-divider"></div>
                        <a href="logout.php" class="dropdown-item">logout</a>
                    </div>
                </li>
                <li class="nav-item">
                    <?php 
                    $id = $user["id_user"];
                    $carts = rows("SELECT * FROM carts WHERE user_id = $id");
                    ?>
                    <?php if ($carts >= 1) : ?>
                    <a href="cart.php" class="nav-link d-inline-block">
                        <img
                        src="assets/images/shopping-cart-filled.svg"
                        alt="cart-empty"
                        />
                        <div class="cart-badge"><?= $carts; ?></div>
                    </a>
                    <?php else : ?>
                    <a href="cart.php" class="nav-link d-inline-block">
                        <img
                        src="assets/images/icon-cart-empty.svg"
                        alt="cart-empty"
                        />
                    </a>
                    <?php endif; ?>
                </li>
                <?php endif;?>
            </ul>
        </div>
      </div>
    </nav>
    
    
    <h1>Our <wbr /> Great <wbr /> Team</h1>
    <div class="container">
        <div class="card">
            <figure>
                <img src="./imagesz/profilTeam/irham.jpg" alt="Foto Profil">
            </figure>
            <p class="name">Moh Irham Alkarim</p>
            <p class="role">WEB DEVELOPER</p>
            <div class="separator"></div>
            <div class="social-container">
                <button>
                    <a href="https://github.com/Atoengg"><i class="fab fa-github"></i></a>
                </button>
                <button>
                    <a href="https://www.facebook.com/bersatu.dalamdamai.3192"><i class="fab fa-facebook"></i></a>
                </button>
                <button>
                    <a href="https://wa.me/6282141598507"><i class="fab fa-whatsapp"></i></a>
                </button>
                <button>
                    <a href="https://www.instagram.com/atoengg/"><i class="fab fa-instagram"></i></a>
                </button>
            </div>
        </div>

        <div class="card">
            <figure>
                <img src="./imagesz/profilTeam/dimas.jpeg" alt="Foto Profil">
            </figure>
            <p class="name">Dimas Bagus Allan A.</p>
            <p class="role">Business Analyst</p>
            <div class="separator"></div>
            <div class="social-container">
                <button>
                    <a href="#"><i class="fab fa-github"></i></a>
                </button>
                <button>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                </button>
                <button>
                    <a href="https://wa.me/6281217548143"><i class="fab fa-whatsapp"></i></a>
                </button>
                <button>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </button>
            </div>
        </div>

        <div class="card">
            <figure>
                <img src="./imagesz/profilTeam/agung.jpg" alt="Foto Profil">
            </figure>
            <p class="name">Agung Jefrianto</p>
            <p class="role">front end developer</p>
            <div class="separator"></div>
            <div class="social-container">
                <button>
                    <a href=" https://github.com/agungjfr"><i class="fab fa-github"></i></a>
                </button>
                <button>
                    <a href="https://www.facebook.com/agung.jefrianto"><i class="fab fa-facebook"></i></a>
                </button>
                <button>
                    <a href="https://wa.me/6283192918994"><i class="fab fa-whatsapp"></i></a>
                </button>
                <button>
                    <a href="https://www.instagram.com/agungjfr_"><i class="fab fa-instagram"></i></a>
                </button>
            </div>
        </div>

        <div class="card">
            <figure>
                <img src="./imagesz/profilTeam/nadlif.jpg" alt="Foto Profil">
            </figure>
            <p class="name">Urukhul Nadlif Zaxi</p>
            <p class="role">back end developer</p>
            <div class="separator"></div>
            <div class="social-container">
                <button>
                    <a href="#"><i class="fab fa-github"></i></a>
                </button>
                <button>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                </button>
                <button>
                    <a href="https://wa.me/6289524994896"><i class="fab fa-whatsapp"></i></a>
                </button>
                <button>
                    <a href="https://instagram.com/urukhulll_?igshid=YmMyMTA2M2Y="><i class="fab fa-instagram"></i></a>
                </button>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="card">
            <figure>
                <img src="./imagesz/profilTeam/dhiki.jpeg" alt="Foto Profil">
            </figure>
            <p class="name">Ahmad Dhiki Adqiyah</p>
            <p class="role">administrator database</p>
            <div class="separator"></div>
            <div class="social-container">
                <button>
                    <a href="#"><i class="fab fa-github"></i></a>
                </button>
                <button>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                </button>
                <button>
                    <a href="https://wa.me/6285607168418"><i class="fab fa-whatsapp"></i></a>
                </button>
                <button>
                    <a href="https://www.instagram.com/dhikiahmad"><i class="fab fa-instagram"></i></a>
                </button>
            </div>
        </div>

        <div class="card">
            <figure>
                <img src="./imagesz/profilTeam/riyo2.jpg" alt="Foto Profil">
            </figure>
            <p class="name">Muh Riyo Ubaidillah</p>
            <p class="role">administrator database</p>
            <div class="separator"></div>
            <div class="social-container">
                <button>
                    <a href="#"><i class="fab fa-github"></i></a>
                </button>
                <button>
                    <a href="https://www.facebook.com/ryo.arekdulak"><i class="fab fa-facebook"></i></a>
                </button>
                <button>
                    <a href="https://wa.me/6285755661150"><i class="fab fa-whatsapp"></i></a>
                </button>
                <button>
                    <a href="https://instagram.com/riyo_ubek?igshid=YmMyMTA2M2Y="><i class="fab fa-instagram"></i></a>
                </button>
            </div>
        </div>

        <div class="card">
            <figure>
                <img src="./imagesz/profilTeam/febri.jpeg" alt="Foto Profil">
            </figure>
            <p class="name">Febriani Nur Adha</p>
            <p class="role">Business Analyst</p>
            <div class="separator"></div>
            <div class="social-container">
                <button>
                    <a href="#"><i class="fab fa-github"></i></a>
                </button>
                <button>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                </button>
                <button>
                    <a href="https://wa.me/6289680818873"><i class="fab fa-whatsapp"></i></a>
                </button>
                <button>
                    <a href="https://www.instagram.com/febrinura12/"><i class="fab fa-instagram"></i></a>
                </button>
            </div>
        </div>
    </div>
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <p class="pt-4 pb-2">
              &copy; 2022 Copyright by Kelompok 5 E-Businnes dan E-Commerce. All Rights Reserved.
            </p>
          </div>
        </div>
      </div>
    </footer>

    <script src="assets/vendor/jquery/jquery.slim.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>
    <script src="assets/js/navbar-scroll.js"></script>
</body>
</html>