<!DOCTYPE html>
<html>
<?php
// include head section
include "components/head.php";
?>

<body>
    <?php include "components/header.php"; ?>
    <main>
    <div class="carousel" data-flickity='{"autoPlay": 3000, "wrapAround": true }'>

<div class="carousel-cell">
    <img class="carousel-image" src="images/ciclismo.jpg" alt=" people doing cycling" />
</div>
<div class="carousel-cell">
    <img class="carousel-image" src="images/football.jpg" alt="football archery" />
</div>
<div class="carousel-cell">
    <img class="carousel-image" src="images/basket.jpg" alt="Basketball ball" />
</div>

<div class="carousel-cell">
    <img class="carousel-image" src="images/pilates.jpg" alt="Pilates training" />
</div>

<div class="carousel-cell">
    <img class="carousel-image" src="images/tennis.jpg" alt=" Tennis player"/>
</div>

</div>
<!-- JavaScript de Flickity -->
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>



<section class="featured">
    <h2>Featured Categories</h2>
    <div class="categories">
    <div class="card">
        <img class="card-image" alt="Cricket Set" src="images/cricket2.png">
        <div class="card-content">
            <h4>Cricket Set</h4>
            <p class="description">Cricket Full Set</p>
            <a href="#" class="card-button">Shop</a>
        </div>
    </div>

    <div class="card">
        <img class="card-image" alt="Tshirt" src="images/shirt.jpg">
        <div class="card-content">
            <h4>Shirt</h4>
            <p class="description">Sport Shirt</p>
            <a href="#" class="card-button">Shop</a>
        </div>
    </div>

    <div class="card">
        <img class="card-image" src="images/snikers_1.jpg" alt="Snikers">
        <div class="card-content">
            <h4>Sneakers</h4>
            <p class="description">Sneakers</p>
            <a href="#" class="card-button">Shop</a>
        </div>
    </div>




    </div>
 </section>
</main>
    <?php include "components/footer.php"; ?>
</body>

</html>