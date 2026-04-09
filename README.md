<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/8/8a/Google_Gemini_logo.svg" width="120" alt="Gemini Logo" />
  <h1>🚀 Gemini Mission Control</h1>
  <p><strong>The Unbreakable, Cross-Platform Autonomous AI Swarm for Gemini CLI</strong></p>

  <p>
    <a href="#architecture">Architecture</a> •
    <a href="#safety-first-zero-loss-protocol">Safety Protocol</a> •
    <a href="#installation">Installation</a> •
    <a href="#usage">Usage</a>
  </p>
</div>

---

**Gemini Mission Control** elevates your Gemini CLI from a simple coding assistant into a fully autonomous, self-correcting engineering swarm. 

By dividing labor into three highly specialized, isolated agents—**The Orchestrator**, **The Worker**, and **The Validator**—Mission Control can execute complex, multi-file features in parallel while mathematically guaranteeing the safety of your existing codebase.

🌍 **100% Cross-Platform:** Engineered to run flawlessly on **Windows, macOS, and Linux**.

---

## 🧠 The Swarm Architecture

Mission Control doesn't just write code; it manages a software development lifecycle.

### 1. 🗺️ The Orchestrator (The Architect)
*   **Role:** Strategic planning and task delegation.
*   **Superpower:** Breaks down vague user requests into atomic, parallelizable tasks.
*   **Constraint:** *Read-Only.* Strictly forbidden from writing code. Enforces **File-Level Isolation** (never assigns two workers to the same file at the same time).

### 2. 🛠️ The Worker (The Engineer)
*   **Role:** Surgical code execution.
*   **Superpower:** Writes bespoke, high-quality code. Capable of running package managers (like `npm install` or `pip install`) to prepare environments.
*   **Constraint:** *Code-Only.* Strictly forbidden from testing or validating its own work to prevent the "marking your own homework" anti-pattern.

### 3. 🛡️ The Validator (The Auditor)
*   **Role:** Ruthless Quality Assurance and Security Auditing.
*   **Superpower:** Forensically analyzes the Worker's output, runs compilers, linters, and test suites (`npm run build`, `cargo test`, etc.). 
*   **Constraint:** *Read-Only.* Cannot fix the code. If a test fails, it kicks the forensic report back to the Worker, creating a self-healing **Feedback Loop**.

---

## 🔒 Safety First: The Zero-Loss Protocol

We understand that giving an AI write-access to your production codebase is terrifying. Mission Control is built with **hardware-level safety constraints**:

*   **Mandatory Backup Gate:** The swarm *refuses* to write a single line of code until a backup or a new Git branch is created.
*   **Race-Condition Immunity:** Parallel tasks are executed concurrently, but validation is forced into a **Strict Sequential Gate**. This prevents multiple test suites from colliding and corrupting your build folders.
*   **The Circuit Breaker:** If a specific task fails validation 3 times consecutively, the system **pulls the plug** and aborts the mission. No infinite loops. No burning through your token budget.
*   **No Destructive Commands:** Workers are physically instructed to reject commands like `rm -rf` or hard git resets.

---

## ⚡ Installation

Because Mission Control relies on standard Gemini CLI features, it works out-of-the-box on any operating system (Windows, macOS, Linux).

1. Ensure you have the [Gemini CLI](https://github.com/google/gemini-cli) installed.
2. Clone or download this repository into your Gemini extensions folder (or link it).
3. The extension includes:
   - `gemini-extension.json` (Manifest)
   - `commands/enter-mission.toml` (Starts the autonomous loop)
   - `commands/exit-mission.toml` (Restores manual control)
   - `agents/*.md` (The agent personas)

---

## 🎮 Usage

### 1. Enter the Workspace
Invoke the mission controller from your terminal:

```bash
gemini /enter-mission
```
*The system will respond: "🚀 AUTONOMOUS WORKSPACE ACTIVATED. SYSTEM GUARDRAILS ENGAGED."*

### 2. Assign a Mission
Give the swarm a high-level objective:

> *"Refactor the authentication flow to use JWTs, update the UI store to handle loading states, and ensure all existing login tests pass."*

**Watch the Swarm Work:**
1. **Orchestrator** creates a 4-step plan (1 backup, 3 parallel execution tasks).
2. **Workers** execute the 3 tasks simultaneously.
3. **Validators** step in one-by-one to run `npm test` and `npm run build`.
4. If a Validator finds an error, it privately messages the Worker to fix it.
5. The mission completes only when all Validators report `[PASS]`.

### 3. Exit the Workspace
When the mission is accomplished, return to standard chat mode:

```bash
gemini /exit-mission
```

---

<div align="center">
  <i>"Do No Harm. Verify Everything."</i>
</div>