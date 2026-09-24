```jsp
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Two Thoughts, One Sky</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    min-height: 100vh;
    overflow: hidden;
    font-family: "Segoe UI", sans-serif;

    background: linear-gradient(
        to bottom,
        #596fae 0%,
        #91a9d4 35%,
        #e6b6b0 70%,
        #f39a68 100%
    );

    position: relative;
}

/* Moon */

.moon {
    position: absolute;
    width: 110px;
    height: 110px;

    border-radius: 50%;

    background: #fff4c2;

    right: 10%;
    top: 8%;

    box-shadow:
        0 0 25px #fff4c2,
        0 0 60px rgba(255,244,194,.5);
}

/* Stars */

.star {
    position: absolute;

    width: 4px;
    height: 4px;

    background: white;

    border-radius: 50%;

    box-shadow: 0 0 8px white;

    animation: twinkle 2s infinite alternate;
}

.s1 { left: 10%; top: 15%; }
.s2 { left: 25%; top: 10%; }
.s3 { left: 42%; top: 18%; }
.s4 { left: 62%; top: 12%; }
.s5 { left: 78%; top: 25%; }

@keyframes twinkle {

    from {
        opacity: .3;
        transform: scale(.7);
    }

    to {
        opacity: 1;
        transform: scale(1.4);
    }

}

/* Clouds */

.cloud {

    position: absolute;

    width: 180px;
    height: 55px;

    background: rgba(255,255,255,.72);

    border-radius: 50px;

    opacity: .8;
}

.cloud::before,
.cloud::after {

    content: "";

    position: absolute;

    background: inherit;

    border-radius: 50%;
}

.cloud::before {

    width: 75px;
    height: 75px;

    left: 25px;
    bottom: 15px;
}

.cloud::after {

    width: 90px;
    height: 90px;

    right: 25px;
    bottom: 10px;
}

.cloud1 {

    top: 25%;
    left: -190px;

    animation:
        moveCloud 30s linear infinite;
}

.cloud2 {

    top: 38%;
    left: -250px;

    transform: scale(.7);

    animation:
        moveCloud 40s linear infinite 5s;
}

@keyframes moveCloud {

    from {
        left: -250px;
    }

    to {
        left: 110%;
    }

}

/* Heading */

.title {

    position: absolute;

    top: 5%;

    width: 100%;

    text-align: center;

    color: white;

    letter-spacing: 4px;

    text-shadow:
        0 3px 15px rgba(0,0,0,.35);
}

.title h1 {

    font-size: clamp(28px,5vw,55px);
}

.title p {

    margin-top: 8px;

    font-size: 16px;

    letter-spacing: 2px;

    opacity: .9;
}

/* Ground */

.ground {

    position: absolute;

    bottom: 0;

    width: 100%;
    height: 32%;

    background:
        linear-gradient(
            to top,
            #183b35,
            #276052,
            #43806c
        );

    border-radius:
        50% 50% 0 0 /
        12% 12% 0 0;
}

/* Bench */

.bench {

    position: absolute;

    width: 390px;
    height: 25px;

    background:
        linear-gradient(
            #8b4f2f,
            #5b301f
        );

    bottom: 26%;

    left: 50%;

    transform: translateX(-50%);

    border-radius: 8px;

    box-shadow:
        0 8px 12px rgba(0,0,0,.35);
}

.bench::before {

    content: "";

    position: absolute;

    width: 380px;
    height: 100px;

    background:
        linear-gradient(
            #9e5c38,
            #653520
        );

    left: 5px;
    bottom: 30px;

    border-radius:
        8px 8px 4px 4px;

    box-shadow:
        inset 0 -8px rgba(50,20,10,.25);
}

.leg {

    position: absolute;

    width: 18px;
    height: 100px;

    background: #3a2922;

    bottom: -100px;

    border-radius:
        0 0 5px 5px;
}

.leg.left {
    left: 45px;
}

.leg.right {
    right: 45px;
}

/* People */

.person {

    position: absolute;

    bottom: 29%;

    width: 105px;
    height: 210px;
}

.person.left {

    left:
        calc(50% - 155px);
}

.person.right {

    left:
        calc(50% + 50px);
}

/* Head */

.head {

    width: 55px;
    height: 55px;

    background: #d99572;

    border-radius: 50%;

    margin: auto;

    position: relative;

    z-index: 4;
}

/* Hair */

.hair {

    position: absolute;

    width: 62px;
    height: 40px;

    background: #30231e;

    border-radius:
        50% 50% 25% 25%;

    top: -4px;
    left: -4px;
}

/* Body */

.body {

    width: 75px;
    height: 90px;

    margin:
        -2px auto 0;

    border-radius:
        25px 25px 10px 10px;
}

.left .body {

    background:
        linear-gradient(
            135deg,
            #4b65c4,
            #26366f
        );
}

.right .body {

    background:
        linear-gradient(
            135deg,
            #e85d75,
            #9e3150
        );
}

/* Arms */

.arm {

    position: absolute;

    width: 65px;
    height: 17px;

    background: #d99572;

    top: 75px;

    border-radius: 20px;

    transform-origin: left center;
}

.left .arm {

    right: 5px;

    transform:
        rotate(25deg);
}

.right .arm {

    left: 5px;

    transform:
        rotate(155deg);
}

/* Legs */

.leg-person {

    position: absolute;

    width: 70px;
    height: 18px;

    background: #252525;

    border-radius: 20px;

    bottom: 0;
}

.left .leg-person {

    left: 18px;

    transform:
        rotate(18deg);
}

.right .leg-person {

    right: 18px;

    transform:
        rotate(-18deg);
}

/* BEAUTIFUL THOUGHT BUBBLES */

.thought {

    position: absolute;

    width: 270px;

    min-height: 120px;

    padding: 22px;

    background:
        rgba(255,255,255,.95);

    border-radius:
        50%;

    box-shadow:
        0 10px 35px rgba(0,0,0,.25);

    color: #333;

    text-align: center;

    font-size: 15px;

    line-height: 1.6;

    z-index: 10;

    animation:
        floatingThought 3s ease-in-out infinite;
}

.thought::after {

    content: "";

    position: absolute;

    bottom: -18px;

    width: 25px;
    height: 25px;

    background:
        rgba(255,255,255,.95);

    border-radius: 50%;
}

/* Her thought */

.left-thought {

    left:
        calc(50% - 360px);

    bottom: 55%;
}

.left-thought::after {

    right: 30px;
}

/* His thought */

.right-thought {

    left:
        calc(50% + 90px);

    bottom: 55%;

    animation-delay: 1s;
}

.right-thought::after {

    left: 30px;
}

/* Thought heading */

.thought strong {

    display: block;

    color: #d94f70;

    font-size: 17px;

    margin-bottom: 8px;
}

/* Floating animation */

@keyframes floatingThought {

    0%,100% {

        transform:
            translateY(0);
    }

    50% {

        transform:
            translateY(-10px);
    }

}

/* Small thought circles */

.bubble-small {

    position: absolute;

    width: 18px;
    height: 18px;

    background:
        rgba(255,255,255,.95);

    border-radius: 50%;

    z-index: 9;
}

.b1 {

    left:
        calc(50% - 145px);

    bottom: 48%;
}

.b2 {

    left:
        calc(50% + 100px);

    bottom: 48%;
}

/* Heart */

.heart {

    position: absolute;

    left: 50%;

    bottom: 38%;

    transform:
        translateX(-50%);

    font-size: 42px;

    animation:
        heartbeat 1.4s infinite;

    filter:
        drop-shadow(
            0 5px 10px
            rgba(255,0,0,.35)
        );
}

@keyframes heartbeat {

    0%,100% {

        transform:
            translateX(-50%)
            scale(1);
    }

    50% {

        transform:
            translateX(-50%)
            scale(1.25);
    }

}

/* Footer */

.footer {

    position: absolute;

    bottom: 4%;

    width: 100%;

    text-align: center;

    color:
        rgba(255,255,255,.8);

    font-size: 14px;

    letter-spacing: 2px;
}

/* Mobile */

@media(max-width:700px) {

    .bench {
        width: 280px;
    }

    .bench::before {
        width: 270px;
    }

    .person.left {

        left:
            calc(50% - 125px);

        transform:
            scale(.8);
    }

    .person.right {

        left:
            calc(50% + 25px);

        transform:
            scale(.8);
    }

    .thought {

        width: 180px;

        font-size: 12px;

        padding: 15px;
    }

    .left-thought {

        left: 2%;

        bottom: 60%;
    }

    .right-thought {

        left: 55%;

        bottom: 60%;
    }

}

</style>
</head>

<body>

<!-- Moon -->

<div class="moon"></div>

<!-- Stars -->

<div class="star s1"></div>
<div class="star s2"></div>
<div class="star s3"></div>
<div class="star s4"></div>
<div class="star s5"></div>

<!-- Moving clouds -->

<div class="cloud cloud1"></div>
<div class="cloud cloud2"></div>

<!-- Title -->

<div class="title">

    <h1>
        Two Thoughts, One Sky
    </h1>

    <p>
        Sometimes the heart speaks without saying a word ✨
    </p>

</div>

<!-- Ground -->

<div class="ground"></div>


<!-- HER BEAUTIFUL THOUGHT -->

<div class="thought left-thought">

    <strong>
        Her thoughts 💭
    </strong>

    "I don't need a thousand beautiful moments...
    I just want one quiet evening beside him,
    where the world disappears
    and his presence feels like home."

</div>


<!-- HIS BEAUTIFUL THOUGHT -->

<div class="thought right-thought">

    <strong>
        His thoughts 💭
    </strong>

    "She may never know how special she is...
    but whenever I see her smile,
    even the ordinary moments
    suddenly feel like something worth remembering."

</div>


<!-- Small thought bubbles -->

<div class="bubble-small b1"></div>
<div class="bubble-small b2"></div>


<!-- LEFT PERSON -->

<div class="person left">

    <div class="head">

        <div class="hair"></div>

    </div>

    <div class="body"></div>

    <div class="arm"></div>

    <div class="leg-person"></div>

</div>


<!-- RIGHT PERSON -->

<div class="person right">

    <div class="head">

        <div class="hair"></div>

    </div>

    <div class="body"></div>

    <div class="arm"></div>

    <div class="leg-person"></div>

</div>


<!-- BENCH -->

<div class="bench">

    <div class="leg left"></div>

    <div class="leg right"></div>

</div>


<!-- HEART -->

<div class="heart">
    ❤️
</div>


<!-- Footer -->

<div class="footer">

    Made with thoughts, silence & a little bit of magic ✨

</div>

</body>
</html>
```

