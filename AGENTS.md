# AGENT GUIDELINES
This document outlines the conventions and commands for agentic coding agents working in this repository.
 1. Project Overview
This project is a self-contained, single-file web application (`src/index.html`) that provides a real-time multi-currency exchange rate converter. All HTML, CSS, and JavaScript are embedded directly within this file.
 2. Build, Lint, and Test Commands
 2.1. Build Commands
There is no explicit build process for this project. The `src/index.html` file is served directly to the browser. Any modifications to the HTML, CSS, or JavaScript within this file are immediately reflected.
 2.2. Lint Commands
No dedicated linting configuration files (e.g., ESLint, Stylelint) were found. For new JavaScript and CSS code, adhere to the code style guidelines below.
For HTML, ensure proper nesting and validity.
**Recommended for manual execution (if needed):**
- **JavaScript:** You can use a global ESLint installation or integrate it into your editor with a basic configuration that follows ES6+ best practices.
  `npx eslint src/index.html` (requires HTML plugin for ESLint)
- **CSS:** A Stylelint setup could be used for validating CSS.
  `npx stylelint src/index.html` (requires HTML plugin for Stylelint)
- **HTML:** Validate HTML structure using an online validator or editor extensions.
 2.3. Test Commands
No automated test suite or framework (e.g., Jest, Mocha, Cypress) is configured for this project.
Testing primarily involves manual verification in a web browser.
**Running a single test:**
Since there's no automated testing framework, "running a single test" doesn't apply in the traditional sense. To verify changes:
1.  Open `src/index.html` in a web browser.
2.  Manually interact with the currency converter, theme toggles, and history charts to ensure functionality.
3.  Check the browser's developer console for any JavaScript errors.
4.  Verify visual correctness and responsiveness across different screen sizes (using browser developer tools).
 3. Code Style Guidelines
Maintain consistency with the existing codebase found in `src/index.html`.
 3.1. Imports and Dependencies
-   External JavaScript libraries are loaded via `<script src="..."></script>` tags from CDNs within `index.html` (e.g., Sortable.js, Chart.js). Do not add new external dependencies without explicit user instruction.
-   All JavaScript logic is embedded directly within `<script>` tags in `index.html`.
 3.2. Formatting
-   **Indentation:** Use **2 spaces** for indentation in HTML, CSS, and JavaScript.
-   **Line Endings:** CRLF (Windows-style) based on the existing file.
-   **Trailing Commas:** Not used in object literals or array definitions as per current code.
-   **Semicolons:** Used at the end of JavaScript statements.
-   **Braces:** K&R style (opening brace on the same line as the statement).
 3.3. Types
-   JavaScript is untyped. No TypeScript is used.
-   Browser's native types (e.g., `string`, `number`, `boolean`, `Date`, `HTMLElement`) are implicitly used.
 3.4. Naming Conventions
-   **JavaScript:**
    -   **Constants:** `UPPER_SNAKE_CASE` (e.g., `THEME_KEY`, `CURRENCY_ORDER_KEY`).
    -   **Variables:** `camelCase` (e.g., `exchangeRates`, `baseCurrency`).
    -   **Functions:** `camelCase` (e.g., `getSystemTheme`, `fetchExchangeRates`).
    -   **HTML Element IDs:** `camelCase` (e.g., `themeToggle`, `currencyList`, `lastUpdated`).
-   **CSS:**
    -   **Class Names:** `kebab-case` (e.g., `theme-toggle`, `currency-item`, `drag-handle`).
    -   **CSS Variables:** `kebab-case` prefixed with `--` (e.g., `--bg-gradient-1`, `--text-color`).
 3.5. Error Handling
-   Use `try...catch` blocks for asynchronous operations (e.g., `fetch` calls) to handle potential network or API errors.
-   Log errors to the console using `console.error()`.
-   Update the UI status to inform the user about errors (e.g., `updateStatus('error', 'Message')`).
-   Provide fallback mechanisms (e.g., `useSimulatedRates()` if API calls fail).
 3.6. Code Structure
-   **HTML:** Standard HTML5 document structure.
-   **CSS:** Embedded within `<style>` tags in the `<head>`. Uses CSS variables for theming and media queries for responsiveness. Sections are commented (e.g., `/* 主题变量 */`).
-   **JavaScript:** Embedded within `<script>` tags.
    -   Initial theme loading script in `<head>`.
    -   Main application logic script near the closing `</body>` tag.
    -   Logical sections are separated by comments (e.g., `/* --- 主题控制 --- */`, `/* --- 核心程序 --- */`).
 4. Cursor/Copilot Rules
No `.cursor/rules/`, `.cursorrules`, or `.github/copilot-instructions.md` files were found. Therefore, there are no explicit Cursor or Copilot rules to follow at this time. Adhere to the general code style guidelines provided above.