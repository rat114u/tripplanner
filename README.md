# 🌍 Travel Planners

A growing collection of single-page, self-contained HTML trip planners — one folder per trip. Built for personal use, open-sourced for anyone who finds them useful as templates.

Each planner is a standalone HTML file with an interactive map, visual journey diagram, day-by-day itinerary, cost estimates, and booking checklists. Zero build steps — just open in a browser.

![Planner count](https://img.shields.io/badge/Trips-1-0a6e8a?style=flat-square)
![Built with](https://img.shields.io/badge/Built_with-HTML_%2B_CSS_%2B_JS-40916c?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-f4a261?style=flat-square)

---

## 🗺️ Trips

| Trip | Dates | Duration | Travelers | Status | View |
|---|---|---|---|---|---|
| 🌺 **Hawaii — 3 Islands** | Jul 26 – Aug 1, 2026 | 6 nights | 2 adults + 1 child | 🟢 Planning | [View](./trips/hawaii-2026/) |

### Coming Soon

- 🧊 **Alaska Cruise** — Summer 2026
- _more to be added as trips get planned_

---

## 🎯 What's In Each Planner

Every trip planner includes:

- **📍 Journey diagram** — Single-page SVG overview of the entire trip arc
- **🗺️ Interactive map** — Leaflet + OpenStreetMap with all stops plotted and filterable
- **✨ Visual highlights** — Infographic-style tiles with custom SVG illustrations
- **📅 Day-by-day itinerary** — Timed stops with kid-friendly and booking tags
- **💰 Cost estimates** — Flights, rental cars, budget ranges
- **📋 Booking checklist** — Prioritized action items
- **🖨️ Print-friendly** — Clean styling for PDF export

---

## 🏗️ Repo Structure

```
travel-planners/
├── README.md                    # This file (the hub)
├── LICENSE                      # MIT
├── .gitignore
└── trips/
    ├── hawaii-2026/
    │   ├── index.html           # The planner (open this)
    │   └── README.md            # Trip-specific notes
    ├── alaska-2026/             # Future trip (placeholder)
    └── ...                      # One folder per trip
```

**Why this structure?** Each trip gets its own folder so it can be:
- Versioned independently (bookings change, plans evolve)
- Shared as a direct link without exposing other trips
- Forked/remixed as a template for similar destinations

---

## 🚀 Quick Start

### Viewing a planner locally

```bash
git clone https://github.com/YOUR_USERNAME/travel-planners.git
cd travel-planners
open trips/hawaii-2026/index.html   # macOS
# or double-click the file
```

### Hosting on GitHub Pages

1. Push this repo to GitHub
2. **Settings → Pages → Source: main branch / root**
3. Each trip will be live at:
   ```
   https://YOUR_USERNAME.github.io/travel-planners/trips/hawaii-2026/
   ```

Because each trip is in its own folder with an `index.html`, the URL stays clean.

---

## ➕ Adding a New Trip

When you plan your next trip:

1. **Copy an existing trip as a template**
   ```bash
   cp -r trips/hawaii-2026 trips/alaska-2026
   ```

2. **Edit the new `index.html`** — update dates, destinations, map pins, costs, etc.

3. **Update this repo's README** — add a row to the Trips table above.

4. **Commit & push**
   ```bash
   git add trips/alaska-2026
   git commit -m "Add Alaska 2026 trip planner"
   git push
   ```

Your new trip is instantly live on GitHub Pages. 🎉

---

## 🛠️ Built With

- **HTML5 / CSS3** — Custom design system, CSS variables, gradients
- **Vanilla JavaScript** — No framework, no build step
- **Leaflet 1.9.4** — Interactive maps (via CDN)
- **OpenStreetMap** — Free map tiles
- **Playfair Display + DM Sans** — Typography (Google Fonts)
- **Inline SVG** — All custom illustrations

No npm, no webpack, no dependencies beyond two CDN links. Each HTML file is fully self-contained and works offline (map tiles excluded).

---

## 🎨 Customizing a Planner

Every planner uses semantic CSS variables at the top of its `<style>` block:

```css
:root {
  --ocean: #0a6e8a;
  --palm: #2d6a4f;
  --coral: #e8614a;
  --sand: #f5e6c8;
  /* ... */
}
```

Change these to re-theme a planner for a different destination (e.g., forest greens for Alaska, desert oranges for Utah).

---

## 📝 Roadmap

- [ ] Alaska Cruise planner (Summer 2026)
- [ ] Shared component library (extract common CSS / JS)
- [ ] Trip template generator script
- [ ] Packing checklist widget with localStorage
- [ ] Expense tracker to compare budget vs. actual
- [ ] Offline map tile caching

---

## 🤝 Contributing

This is a personal project, but feel free to:

- **Fork it** to build your own trip planner collection
- **Open an issue** with ideas or feedback
- **Submit a PR** if you spot a bug or improve a shared component

---

## 📄 License

MIT — use any of these as templates for your own travel planning. Credit is appreciated but not required.

---

## 🌴 About

A personal project to replace the usual "mess of docs and screenshots" approach to trip planning with something cleaner, more visual, and future-me-friendly.

Built with aloha. ✈️
