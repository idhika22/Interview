## Bundle size reduction and code splitting
Initial Problem:
At the beginning, the entire JavaScript bundle for the website was loaded at once when a user visited the page.
This caused several performance issues:
Large initial load time
Slow Time to Interactive (TTI)
Increased memory usage
Poor Lighthouse performance scores
Optimization Approach
1️.Webpack Setup:
I configured Webpack to bundle the project into a dist/ folder, producing optimized static assets:
  1.Minified JavaScript and CSS files
  2.Hash-based filenames for cache busting
  3.Clean folder structure with separated assets
This allowed the server to serve efficient, production-ready files instead of loading raw, unoptimized scripts.
2️.Code Splitting Implementation:
Instead of delivering the whole JavaScript code upfront, I implemented Code Splitting using dynamic import() statements,
which allowed parts of the app to load only when needed (e.g., separate pages or large components).
This significantly reduced the initial bundle size and improved page load speed


## Lazy Loading and Dynamic Imports
All components and routes were being loaded eagerly, increasing initial load time and delaying Time-to-Interactive (TTI).
Solution:
Implemented lazy loading for route-based components using React.lazy() combined with Suspense.
This ensures components are only downloaded when the user navigates to that specific route, improving performance.

## Image Optimization & Lazy Loading
Images were loading at full resolution immediately, consuming bandwidth and slowing down the initial render.
Converted images to modern formats like AVIF or WebP for smaller file sizes with similar quality.
Implemented lazy loading using the loading="lazy" attribute on <img> tags to defer offscreen images from loading until needed.

## Performance Monitoring & Metrics
Lacked visibility into performance bottlenecks during development and production.
Integrated Performance APIs in the browser to measure Total Rendering Time also improved metrics like
First Contentful Paint
Largest Contentful Paint
Total Blocking Time
Cumulative Layout Shift
Speed Index

## Lighthouse Score Improvement
Initial Lighthouse performance score was low due to large bundles, unoptimized images, and lack of caching strategies.
Applied all the above optimizations (code splitting, lazy loading, image optimization).
Enabled proper caching headers in server configuration.
Minified CSS and JS files using Webpack plugins.
Reduced render-blocking resources by deferring non-critical scripts.
As a result, the Lighthouse performance score improved from around 50-60 to 90+, ensuring a fast and smooth user experience.