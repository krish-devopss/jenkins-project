<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
  --bg: #0f172a;
  --primary: #0ea5e9;
  --accent: #22c55e;
  --text: #e2e8f0;
  --muted: #94a3b8;
  --card: rgba(255,255,255,0.05);
  --border: rgba(255,255,255,0.1);
  --radius: 14px;
}

* { box-sizing: border-box; }

body {
  margin: 0;
  font-family: Inter;
  background: var(--bg);
  color: var(--text);
}

/* HEADER */
header {
  position: sticky;
  top: 0;
  background: rgba(15,23,42,0.7);
  backdrop-filter: blur(10px);
  border-bottom: 1px solid var(--border);
  z-index: 10;
}

.header-inner {
  display:flex;
  justify-content:space-between;
  padding:14px 20px;
}

.brand {
  font-family:Poppins;
  font-weight:700;
  font-size:20px;
}

.brand span { color: var(--primary); }

/* HERO */
.hero {
  text-align:center;
  padding:80px 20px;
  background: linear-gradient(135deg,#0ea5e9,#6366f1,#22c55e);
  color:white;
}

.hero h1 {
  font-size:42px;
  margin:0;
  animation: fadeUp 1s ease;
}

.hero p { opacity:0.9; }

@keyframes fadeUp {
  from { opacity:0; transform:translateY(20px);}
  to { opacity:1; transform:translateY(0);}
}

/* BUTTONS */
.btn {
  padding:10px 18px;
  border-radius:999px;
  border:none;
  cursor:pointer;
  font-weight:600;
}

.btn-primary {
  background: white;
  color:#0f172a;
  box-shadow:0 0 20px rgba(255,255,255,0.2);
}

/* GRID */
.container { max-width:1200px; margin:auto; padding:20px; }

.grid {
  display:grid;
  gap:20px;
}

.categories { grid-template-columns:repeat(6,1fr); }
.products { grid-template-columns:repeat(4,1fr); }

/* CARD */
.card {
  background: var(--card);
  border:1px solid var(--border);
  border-radius:var(--radius);
  overflow:hidden;
  transition:0.3s;
  backdrop-filter: blur(10px);
}

.card:hover {
  transform: translateY(-8px);
  box-shadow:0 20px 40px rgba(0,0,0,0.4);
}

/* PRODUCT */
.product img {
  width:100%;
  height:200px;
  object-fit:cover;
  transition:0.4s;
}

.product:hover img {
  transform: scale(1.08);
}

.product-body {
  padding:12px;
}

.price {
  color: var(--primary);
  font-weight:700;
}

/* CATEGORY */
.cat {
  text-align:center;
  padding:20px;
}

/* RESPONSIVE */
@media(max-width:1000px){
  .products { grid-template-columns:repeat(2,1fr);}
  .categories { grid-template-columns:repeat(3,1fr);}
}

@media(max-width:600px){
  .products, .categories { grid-template-columns:1fr;}
}
</style>
</head>

<body>

<header>
<div class="header-inner">
<div class="brand">Nexus<span>Shop</span></div>
<div><i class="fas fa-shopping-cart"></i></div>
</div>
</header>

<section class="hero">
<h1>Premium Shopping Experience</h1>
<p>Modern UI e-commerce demo with smooth design</p>
<br>
<button class="btn btn-primary">Shop Now</button>
</section>

<div class="container">

<h2>Categories</h2>
<div class="grid categories">

<div class="card cat"><i class="fas fa-mobile"></i><p>Phones</p></div>
<div class="card cat"><i class="fas fa-laptop"></i><p>Laptops</p></div>
<div class="card cat"><i class="fas fa-tshirt"></i><p>Fashion</p></div>
<div class="card cat"><i class="fas fa-headphones"></i><p>Gadgets</p></div>
<div class="card cat"><i class="fas fa-shoe-prints"></i><p>Shoes</p></div>
<div class="card cat"><i class="fas fa-watch"></i><p>Accessories</p></div>

</div>

<h2 style="margin-top:40px;">Products</h2>
<div class="grid products">

<div class="card product">
<img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb">
<div class="product-body">
<h4>iPhone 14 Pro</h4>
<div class="price">$1099</div>
</div>
</div>

<div class="card product">
<img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45">
<div class="product-body">
<h4>MacBook Pro</h4>
<div class="price">$1999</div>
</div>
</div>

<div class="card product">
<img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f">
<div class="product-body">
<h4>Camera</h4>
<div class="price">$2499</div>
</div>
</div>

<div class="card product">
<img src="https://images.unsplash.com/photo-1542272604-787c3835535d">
<div class="product-body">
<h4>Nike Shoes</h4>
<div class="price">$150</div>
</div>
</div>

</div>

</div>

</body>
</html>
