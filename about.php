<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>
   <link rel="Website Icon" type="png" href="images/Keycaps Logo.png">
   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
   <link rel="stylesheet" href="css/style.css">
</head>
<body>

<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about-img.svg" alt="">
      </div>

      <div class="content">
         <h3>About Our Store</h3>
         <p>Welcome to our online store specializing in keyboards, keycaps, switches, deskmats, and wrist rests. We offer a wide range of high-quality products at competitive prices. Our goal is to help you create the perfect typing experience for your needs. Contact us for friendly and knowledgeable customer service. Thank you for choosing our store!</p>
         <a href="contact.php" class="btn">Contact Us</a>
      </div>

   </div>

</section>

<section class="reviews">
   
   <h1 class="heading">Customer Feedback</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/picture-1.jpg" alt="">
         <p>Love my new keyboard! The quality is top-notch and the customer service was excellent. Highly recommended!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Cong TV</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/picture-2.jpg" alt="">
         <p>I've been a customer for years and I always come back for their amazing selection and great prices. Thanks for always delivering the best!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Junnie Boy</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/picture-3.jpg" alt="">
         <p>Fast shipping, great customer service, and a high-quality keyboard - what more could I ask for? Thank you!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Yow</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/picture-4.jpg" alt="">
         <p>I'm so happy with my purchase from this store. The keyboard is exactly what I was looking for and the website was easy to use. Will definitely be back!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Boss Keng</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/picture-5.jpg" alt="">
         <p>This store has everything I need to build the perfect keyboard. I appreciate the wide selection and helpful customer service.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Viy Cortez</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/picture-6.jpg" alt="">
         <p>I'm not a keyboard expert, but the staff at this store were patient and helped me choose the right one for me. I'm really happy with my purchase!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Vien Iligan</h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/picture-7.jpg" alt="">
         <p>I love how customizable the keyboards are from this store. I was able to create the perfect setup for my needs. Thank you for offering such great products!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Pat Velasquez-Gaspar</h3>
      </div>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>

<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>