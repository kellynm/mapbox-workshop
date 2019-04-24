# Mapbox GL - An Interactive Mapping Platform for Geospatial Data
![Image](img/stress_toggle.gif)
Mapbox provides many tools to build maps into your website or web-based application, including Mapbox GL JS. Mapbox GL JS is an open source JavaScript library you can use to display your Mapbox maps, add interactivity, and customize the map experience in your application.

### Mapbox GL JS
* In active development — new features always being added, improving existing features, and fixing bugs
* Maps are rendered client-side by the browser
* Map data and styles can be changed dynamically

## What You’ll Need
* Mapbox account and access token.
* Mapbox GL JS, a Javascript Library.
* Text Editor, Sublime, Atom, Visual Studio Code, etc. 
* Previously shared index.html file representing skeleton of interactive application in Mapbox. I won’t give you all the answers throughout the tutorial, but this will hopefully serve as a decent basis for working from after the lab if desired.

## The Bones of Mapbox [index.html]:
```html
<!DOCTYPE html>
<html>
   <head>
      <meta charset='utf-8' />
      <title>Mapbox GL Workshop</title>
      <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />
      <script src='https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.1/mapbox-gl.js'></script>
      <link href='https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.1/mapbox-gl.css' rel='stylesheet' />
      <style>
         body { margin:0; padding:0; }
         #map { position:absolute; top:0; bottom:0; width:100%; }
      </style>
   </head>
   <body>
      <div id='map'></div>
      <script>
         mapboxgl.accessToken = '<YOUR_TOKEN_KEY_HERE_PLS>'; // don't keep '<' & '>' when pasting token
         
         var map = new mapboxgl.Map({
         container: 'map', // container id
         style: 'mapbox://styles/mapbox/streets-v10', //hosted style id;  
         //others: 
         //	'mapbox://styles/mapbox/light-v10'
         //	'mapbox://styles/mapbox/streets-v10' 
         //	'mapbox://styles/mapbox/dark-v10'
         //	'mapbox://styles/mapbox/outdoors-v10'  
         //	'mapbox://styles/mapbox/satellite-v10' 
         //	'mapbox://styles/mapbox/traffic-night-v2'
         center: [-78.6382, 35.7796], // change starting position to coordinates associated w/ your data.
         zoom: 6 // starting zoom
         });
      </script>
   </body>
</html>
```
## What Are We Covering & Why Does it Matter?

### Learning **'Goal'**
* Personally useful and relevant, web-based (published to web) interactive mapping application.

### Interest in Interactivity 
![Image](img/results.gif)

### Identified Research Themes
* Solar potential analysis 
* Acoustic impact of vessel noise on natural soundscapes
* Mapping walkability using social media data and GSV imagery.
* Optimization of pest inpection
* 3D modeling
* Geostatistical modeling of dissolved oxygen levels
* Scene semantic knowledge
* Dr. Laura Tateosian's funding

## Getting Started
### Git
* Create new repo on Github
  * Example: mapbox-workshop
* Open terminal/cmd:
  * git clone "https://github.com/<'your_user_name_here'>/mapbox-workshop.git"
  * cd "https://github.com/<'your_user_name_here'>/mapbox-workshop.git"
  * download [index.html](./index.html) into the newly created file directory (e.g., mapbox-workshop)

### Publishing to Web
* Open html content in your text editor of choice
* Now, let's see what it looks like on the web with a double click:

![Image](img/initial_index_open.gif)

## Understanding Mapbox Features
### Map Layers
* Show and hide layers
* Adding polygons
* 3D Buildings
* Adjust a layer's opacity
* Animate series of images

### Data Types
* Coordinates
* Raster
* Vector
* Point clouds
* Tabular 
* Climate data
* Spatial & temporal varying DO data 

### User Interaction
* Pop up information
* Create time slider
* Draggable marker
* Filter features based on map view
* Create hover effect