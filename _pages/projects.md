---
layout: page
title: projects
permalink: /projects/
description: Main research directions and ongoing work in machine-learning-enabled CFD and industrial simulation.
nav: true
nav_order: 3
toc:
  sidebar: left
---

<div class="projects-overview">

<h2 id="overview">Overview</h2>

<div class="research-hero">
  <div class="research-hero-copy">
    <p>
      My work sits at the intersection of fluid dynamics, machine learning, and scientific computing. I focus on building
      data-enabled methods that make industrial simulation faster, more reliable, and more useful in engineering design.
    </p>
    <p>
      Across recent projects, the common goal is to reduce turnaround time for aerodynamic analysis and turbulence modeling
      while preserving the physical fidelity required in real engineering workflows.
    </p>
  </div>

  <div class="research-hero-media">
    {% include figure.liquid
      path="assets/img/12.jpg"
      alt="Research overview image"
      class="img-fluid rounded z-depth-1"
      zoomable=true
    %}
  </div>
</div>

<h2 id="real-time-aerodynamic-evaluation">Real-Time Aerodynamic Evaluation</h2>

<div class="research-direction">
  <div class="research-direction-media">
    {% include figure.liquid
      path="assets/img/6.jpg"
      alt="Aerodynamic evaluation direction"
      class="img-fluid rounded z-depth-1"
      zoomable=true
    %}
  </div>

  <div class="research-direction-copy">
    <p>
      I develop machine-learning-based operators and geometry-aware models for rapid aerodynamic prediction on complex
      three-dimensional configurations. The objective is to move from expensive repeated CFD loops to near real-time
      design feedback.
    </p>
    <p>
      This direction is especially relevant for industrial applications where large design spaces must be explored under
      tight iteration cycles.
    </p>
    <ul>
      <li>Geometry-to-flow learning for arbitrary 3D vehicle configurations.</li>
      <li>Fast surrogate models for drag and aerodynamic performance estimation.</li>
      <li>Bridging high-fidelity CFD data and practical engineering decision-making.</li>
    </ul>
  </div>
</div>

<h2 id="data-enabled-turbulence-modeling">Data-Enabled Turbulence Modeling</h2>

<div class="research-direction reverse">
  <div class="research-direction-media">
    {% include figure.liquid
      path="assets/img/4.jpg"
      alt="Turbulence modeling direction"
      class="img-fluid rounded z-depth-1"
      zoomable=true
    %}
  </div>

  <div class="research-direction-copy">
    <p>
      A major part of my research studies how data and machine learning can improve turbulence closures while preserving
      physical consistency. This includes screening candidate models, recalibrating classical closures, and designing
      workflows that remain interpretable and robust.
    </p>
    <p>
      The emphasis is not only predictive accuracy, but also deployability in realistic Reynolds-averaged and
      large-eddy simulation pipelines.
    </p>
    <ul>
      <li>Data-enabled recalibration of RANS turbulence models.</li>
      <li>A priori screening and constrained model development.</li>
      <li>Large-language-model-assisted turbulence model exploration.</li>
    </ul>
  </div>
</div>

<h2 id="reduced-complexity-solvers-and-industrial-cfd-tools">Reduced-Complexity Solvers and Industrial CFD Tools</h2>

<div class="research-direction">
  <div class="research-direction-media">
    {% include figure.liquid
      path="assets/img/10.jpg"
      alt="Industrial CFD tools direction"
      class="img-fluid rounded z-depth-1"
      zoomable=true
    %}
  </div>

  <div class="research-direction-copy">
    <p>
      I am also interested in reducing the computational cost of iterative solvers and simulation workflows used in
      production environments. The goal is to improve turnaround time without sacrificing numerical reliability.
    </p>
    <p>
      This direction connects numerical methods, software tooling, and engineering deployment, especially for industrial
      users who need stable and efficient simulation systems rather than isolated algorithmic prototypes.
    </p>
    <ul>
      <li>Data-enabled reduction of solver time complexity.</li>
      <li>Practical software pipelines for industrial aerodynamic simulation.</li>
      <li>Integration of AI components into CAE and CFD workflows.</li>
    </ul>
  </div>
</div>

</div>
