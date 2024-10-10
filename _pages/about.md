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

I am a third-year Ph.D. student in the Electrical and Computer Engineering department at **UC San Diego**, working with Prof. Dinesh Bharadia in the Wireless Communication, Sensing, and Networking Group [WCSNG](https://wcsng.ucsd.edu). 
 
I completed my B.Tech in Electronics and Communication Engineering from the National Institute of Technology, Durgapur (**NITD**), India. Later, I earned my MS in Electrical and Computer Engineering from the University of California, Los Angeles (**UCLA**), specializing in systems and signals.  

Before starting my doctoral studies, I worked at Qualcomm, San Diego, where I focused on 5G NR protocol optimizations for extended reality (XR) applications. Motivated by the desire to delve deeper into research, I returned to UCSD to pursue my Ph.D.  

My research interests span the broad areas of **wireless communication and networked systems**. I am particularly interested in systems and algorithm development aimed at optimizing next-generation networks for enhanced application performance. I explore AI-driven optimizations for network control and decision-making, with the goal of improving the efficiency and intelligence of modern networks. Refer to my project website [EdgeRIC](https://edgeric.github.io)


Research Overview
======
My research focuses on optimizing cellular networks to meet the evolving demands of next-generation applications, which require varying levels of throughput, latency, and reliability. I am developing systems that enable ultra-low-latency (sub-millisecond) AI/ML-based control for cellular networks, alongside algorithms to optimize network functions and enhance radio network performance. A key aspect of my work is ensuring the scalability and robustness of these platforms, making them adaptable to diverse applications and deployment scenarios.

In parallel, I am exploring specific application requirements within cellular networks and designing customized solutions to enhance overall Quality of Experience of the new age apps. The advent of software-defined networking (SDN) has revolutionized the cellular landscape by promoting virtualization and disaggregation. Open RAN, in particular, supports the use of open interfaces for comprehensive network analysis and enables embedding control mechanisms directly into network functions.

By integrating low-latency AI capabilities into cellular networks, my work facilitates real-time decision-making—crucial for enabling the diverse range of end-user applications expected in the next generation of mobile communication. 


Here is a list of all my talks!
==============================

<ul>{% for post in site.talks reversed %}
  {% include archive-single-talk-cv.html  %}
{% endfor %}</ul>

<!-- For a deeper insight into my current research vision, visit my project website [EdgeRIC](https://edgeric.github.io) -->


<!-- ## Photos Carousel

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/images/sparc.png" class="d-block w-100" alt="Image 1">
    </div>
    <div class="carousel-item">
      <img src="/images/sparc.png" class="d-block w-100" alt="Image 2">
    </div>
    <div class="carousel-item">
      <img src="/images/sparc.png" class="d-block w-100" alt="Image 3">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>   -->


<!-- Getting started
======
1. Register a GitHub account if you don't have one and confirm your e-mail (required!)
1. Fork [this repository](https://github.com/academicpages/academicpages.github.io) by clicking the "fork" button in the top right. 
1. Go to the repository's settings (rightmost item in the tabs that start with "Code", should be below "Unwatch"). Rename the repository "[your GitHub username].github.io", which will also be your website's URL.
1. Set site-wide configuration and create content & metadata (see below -- also see [this set of diffs](http://archive.is/3TPas) showing what files were changed to set up [an example site](https://getorg-testacct.github.io) for a user with the username "getorg-testacct")
1. Upload any files (like PDFs, .zip files, etc.) to the files/ directory. They will appear at https://[your GitHub username].github.io/files/example.pdf.  
1. Check status by going to the repository settings, in the "GitHub pages" section

Site-wide configuration
------
The main configuration file for the site is in the base directory in [_config.yml](https://github.com/academicpages/academicpages.github.io/blob/master/_config.yml), which defines the content in the sidebars and other site-wide features. You will need to replace the default variables with ones about yourself and your site's github repository. The configuration file for the top menu is in [_data/navigation.yml](https://github.com/academicpages/academicpages.github.io/blob/master/_data/navigation.yml). For example, if you don't have a portfolio or blog posts, you can remove those items from that navigation.yml file to remove them from the header. 

Create content & metadata
------
For site content, there is one markdown file for each type of content, which are stored in directories like _publications, _talks, _posts, _teaching, or _pages. For example, each talk is a markdown file in the [_talks directory](https://github.com/academicpages/academicpages.github.io/tree/master/_talks). At the top of each markdown file is structured data in YAML about the talk, which the theme will parse to do lots of cool stuff. The same structured data about a talk is used to generate the list of talks on the [Talks page](https://academicpages.github.io/talks), each [individual page](https://academicpages.github.io/talks/2012-03-01-talk-1) for specific talks, the talks section for the [CV page](https://academicpages.github.io/cv), and the [map of places you've given a talk](https://academicpages.github.io/talkmap.html) (if you run this [python file](https://github.com/academicpages/academicpages.github.io/blob/master/talkmap.py) or [Jupyter notebook](https://github.com/academicpages/academicpages.github.io/blob/master/talkmap.ipynb), which creates the HTML for the map based on the contents of the _talks directory).

**Markdown generator**

I have also created [a set of Jupyter notebooks](https://github.com/academicpages/academicpages.github.io/tree/master/markdown_generator
) that converts a CSV containing structured data about talks or presentations into individual markdown files that will be properly formatted for the Academic Pages template. The sample CSVs in that directory are the ones I used to create my own personal website at stuartgeiger.com. My usual workflow is that I keep a spreadsheet of my publications and talks, then run the code in these notebooks to generate the markdown files, then commit and push them to the GitHub repository.

How to edit your site's GitHub repository
------
Many people use a git client to create files on their local computer and then push them to GitHub's servers. If you are not familiar with git, you can directly edit these configuration and markdown files directly in the github.com interface. Navigate to a file (like [this one](https://github.com/academicpages/academicpages.github.io/blob/master/_talks/2012-03-01-talk-1.md) and click the pencil icon in the top right of the content preview (to the right of the "Raw | Blame | History" buttons). You can delete a file by clicking the trashcan icon to the right of the pencil icon. You can also create new files or upload files by navigating to a directory and clicking the "Create new file" or "Upload files" buttons. 

Example: editing a markdown file for a talk
![Editing a markdown file for a talk](/images/editing-talk.png)

For more info
------
More info about configuring Academic Pages can be found in [the guide](https://academicpages.github.io/markdown/). The [guides for the Minimal Mistakes theme](https://mmistakes.github.io/minimal-mistakes/docs/configuration/) (which this theme was forked from) might also be helpful. -->
