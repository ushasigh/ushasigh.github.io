---
permalink: /
title: "About Me"
layout: archive
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% include base_path %}

<style>
  .home-lead {
    font-size: 1.18em;
    line-height: 1.6;
    color: #2b2b2b;
    margin: 0.2em 0 1.1em 0;
  }
  .home-lead .accent { color: #2b7f97; font-weight: 600; }
  .home-bio p {
    line-height: 1.7;
    color: #3f3f3f;
    margin-bottom: 1em;
  }
  .home-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 0.55em;
    margin: 1.4em 0 2em 0;
  }
  .home-tag {
    display: inline-block;
    padding: 0.32em 0.9em;
    font-size: 0.85em;
    font-weight: 600;
    color: #2b7f97;
    background: rgba(82, 173, 200, 0.12);
    border: 1px solid rgba(82, 173, 200, 0.35);
    border-radius: 999px;
  }
  .home-h2 {
    font-size: 1.4em;
    font-weight: 700;
    color: #2b2b2b;
    margin: 1.8em 0 0.15em 0;
  }
  .home-rule {
    border: none;
    border-top: 2px solid #52adc8;
    width: 48px;
    margin: 0 0 1em 0;
  }
  .home-overview {
    line-height: 1.75;
    color: #3f3f3f;
  }
  .project-callout {
    display: flex;
    align-items: center;
    gap: 0.9em;
    padding: 0.95em 1.2em;
    margin: 1.3em 0 0.5em 0;
    background: linear-gradient(90deg, rgba(82, 173, 200, 0.10), rgba(82, 173, 200, 0.02));
    border: 1px solid rgba(82, 173, 200, 0.30);
    border-left: 4px solid #52adc8;
    border-radius: 8px;
    font-size: 0.97em;
  }
  .project-callout .pc-icon { font-size: 1.3em; color: #52adc8; }
  .project-callout a { font-weight: 700; }

  .talk-list { display: flex; flex-direction: column; gap: 0.95em; margin-top: 0.6em; }
  .talk-list ul, .talk-list li { list-style: none; margin: 0; padding: 0; }
  .talk-card {
    padding: 1em 1.25em;
    background: #fff;
    border: 1px solid #ececec;
    border-left: 4px solid #52adc8;
    border-radius: 8px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
    transition: box-shadow 0.2s ease, transform 0.2s ease;
  }
  .talk-card:hover { box-shadow: 0 6px 18px rgba(0, 0, 0, 0.09); transform: translateY(-2px); }
  .talk-title { font-size: 1.03em; font-weight: 700; line-height: 1.35; margin: 0 0 0.4em 0; }
  .talk-title a { color: #2b2b2b; text-decoration: none; border: none; }
  .talk-title a:hover { color: #52adc8; }
  .talk-meta {
    display: flex; flex-wrap: wrap; align-items: center; gap: 0.5em;
    font-size: 0.88em; color: #6f6f6f;
  }
  .talk-venue {
    display: inline-block; padding: 0.14em 0.7em;
    background: rgba(82, 173, 200, 0.13); color: #2b7f97;
    border-radius: 999px; font-weight: 600;
  }
  .talk-date { font-weight: 600; color: #555; }
  .talk-loc::before { content: "·"; margin-right: 0.5em; color: #bbb; }
  .talk-btn {
    display: inline-flex; align-items: center; gap: 0.4em;
    margin-top: 0.75em; padding: 0.28em 0.8em;
    font-size: 0.82em; font-weight: 600;
    color: #52adc8 !important; background: #fff;
    border: 1px solid #52adc8; border-radius: 6px;
    text-decoration: none; transition: all 0.15s ease;
  }
  .talk-btn:hover { background: #52adc8; color: #fff !important; }

  /* Two-column layout: main content + sticky news sidebar */
  .home-wrap {
    display: flex;
    gap: 2em;
    align-items: flex-start;
  }
  .home-main { flex: 1 1 auto; min-width: 0; }
  .home-aside {
    flex: 0 0 250px;
    position: sticky;
    top: 1.5em;
    background: #fafcfd;
    border: 1px solid #e6eef1;
    border-radius: 10px;
    padding: 1.1em 1.25em 0.4em 1.25em;
  }
  .aside-title {
    display: flex;
    align-items: center;
    gap: 0.45em;
    font-size: 1.05em;
    font-weight: 700;
    color: #2b2b2b;
    margin: 0 0 0.2em 0;
  }
  .aside-title::before { content: "📣"; font-size: 0.95em; }
  .aside-rule {
    border: none;
    border-top: 2px solid #52adc8;
    width: 36px;
    margin: 0 0 0.4em 0;
  }
  .news-list { list-style: none; margin: 0; padding: 0; }
  .news-item {
    display: flex;
    flex-direction: column;
    gap: 0.12em;
    padding: 0.65em 0;
    border-bottom: 1px solid #e6eef1;
  }
  .news-item:last-child { border-bottom: none; }
  .news-date {
    font-size: 0.76em;
    font-weight: 700;
    letter-spacing: 0.02em;
    text-transform: uppercase;
    color: #2b7f97;
  }
  .news-body {
    line-height: 1.5;
    color: #3f3f3f;
    font-size: 0.9em;
  }
  .news-body a { font-weight: 600; }

  @media (max-width: 900px) {
    .home-wrap { flex-direction: column; }
    .home-aside {
      position: static;
      flex-basis: auto;
      width: 100%;
      order: -1; /* show news first on mobile */
    }
  }
  @media (max-width: 600px) {
    .home-lead { font-size: 1.05em; }
  }
</style>

<div class="home-wrap">
<div class="home-main" markdown="0">

<p class="home-lead">
  Hi, I'm Ushasi 👋 a fourth-year Ph.D. student in <span class="accent">Electrical &amp; Computer Engineering</span> at <strong>UC San Diego</strong>, building the next generation of AI-native wireless networks.
</p>

<div class="home-bio" markdown="1">

I work with Prof. Dinesh Bharadia in the Wireless Communication, Sensing, and Networking Group [WCSNG](https://wcsng.ucsd.edu). Before my Ph.D., I earned my MS at **UCLA** and B.Tech at **NIT Durgapur**, and worked at **Qualcomm** on 5G NR protocol optimizations for extended reality (XR) applications.

</div>

<div class="home-tags">
  <span class="home-tag">Networked Systems</span>
  <span class="home-tag">AI/ML Optimization</span>
  <span class="home-tag">Edge-native 5G &amp; Open RAN</span>
  <span class="home-tag">Application QoE</span>
  <span class="home-tag">Physical AI</span>
  <span class="home-tag">Satellite Networks (NTN)</span>
</div>

<h2 class="home-h2">Research Overview</h2>
<hr class="home-rule" />

<p class="home-overview">
My long-term vision is to build <strong>user-centric networked systems</strong> that tightly couple application-level experience (QoE) with network-level control. Today's networks expose rich telemetry across the stack, yet application adaptation stays largely decoupled from these signals. This is increasingly limiting for latency-sensitive workloads such as live streaming, XR, cloud gaming, and interactive AI, where small transport or scheduling fluctuations cause perceptible experience degradation. My work studies how transport dynamics, queue management, and radio scheduling jointly shape end-user experience, arguing for a shift from <strong>utilization-centric optimization to experience-aware networks</strong>.
</p>

<div class="project-callout">
  <span class="pc-icon">🚀</span>
  <span>Explore my flagship project, <a href="https://edgeric.github.io">EdgeRIC</a>: real-time intelligent optimization and control for NextG cellular networks.</span>
</div>

<h2 class="home-h2">Selected Talks</h2>
<hr class="home-rule" />

<div class="talk-list">
  {% for post in site.talks reversed %}
    <div class="talk-card">
      <h3 class="talk-title">
        {% if post.link %}
          <a href="{{ post.link }}" target="_blank" rel="noopener">{{ post.title }}</a>
        {% else %}
          <a href="{{ base_path }}{{ post.url }}">{{ post.title }}</a>
        {% endif %}
      </h3>
      <div class="talk-meta">
        {% if post.venue %}<span class="talk-venue">{{ post.venue }}</span>{% endif %}
        {% if post.date %}<span class="talk-date">{{ post.date | date: "%B %Y" }}</span>{% endif %}
        {% if post.location %}<span class="talk-loc">{{ post.location }}</span>{% endif %}
      </div>
      {% if post.type %}<div class="talk-meta" style="margin-top:0.3em;font-style:italic;">{{ post.type }}</div>{% endif %}
      {% if post.video %}
        <a class="talk-btn" href="{{ post.video }}" target="_blank" rel="noopener"><i class="fa fa-play-circle" aria-hidden="true"></i> Watch</a>
      {% endif %}
    </div>
  {% endfor %}
</div>

</div><!-- /.home-main -->

<aside class="home-aside">
  <div class="aside-title">News</div>
  <hr class="aside-rule" />
  <ul class="news-list">
    <li class="news-item">
      <span class="news-date">Jun 2026</span>
      <span class="news-body">Started my summer internship at <strong>AT&amp;T Labs</strong>, Bedminster, NJ.</span>
    </li>
    <li class="news-item">
      <span class="news-date">May 2026</span>
      <span class="news-body">Won the <strong>Qualcomm Innovation Fellowship 2026</strong> for the project titled <em>mmsRAN: Enabling Physical AI with the Cellular Edge</em>.</span>
    </li>
    <li class="news-item">
      <span class="news-date">Apr 2026</span>
      <span class="news-body">Co-Chairing the <strong>S3 Workshop</strong> and Web &amp; Publicity Chair for the <strong>OpenAI RAN Workshop</strong> at ACM MobiCom 2026.</span>
    </li>
    <li class="news-item">
      <span class="news-date">Feb 2026</span>
      <span class="news-body">Two papers accepted at <strong>ACM HotMobile 2026</strong>: <em>Beyond Wi-Fi</em> and <em>Scout</em>.</span>
    </li>
    <li class="news-item">
      <span class="news-date">Jun 2025</span>
      <span class="news-body">Started my summer internship at <strong>HPE Labs</strong>, NDSL group, Milpitas, CA.</span>
    </li>
  </ul>
</aside>

</div><!-- /.home-wrap -->
