<div align="center">

<a href="https://webdevs.net"><img src="./assets/banner.png" alt="Web Devs: no prompt glitter, just production engineering" width="100%" /></a>

[![Website](https://img.shields.io/badge/webdevs.net-cf5230?style=flat-square&logo=googlechrome&logoColor=white)](https://webdevs.net)
[![Contact](https://img.shields.io/badge/support@webdevs.net-111111?style=flat-square&logo=maildotru&logoColor=cf5230)](mailto:support@webdevs.net)
[![Location](https://img.shields.io/badge/California,_USA-111111?style=flat-square&logo=googlemaps&logoColor=CAC18B)](https://webdevs.net/contact)

</div>

---

## What this organization is

Web Devs is a security-focused engineering team building AI-backed applications and the systems around them:
data pipelines, model integration, APIs, interfaces, and the CI/CD and monitoring that keep all of
it running. Most repositories here are private client codebases, one repo per site or platform,
each with its own environment config and deploy path.

The tagline on the banner is a working principle, not a slogan: a demo that calls an API is not a
system. The engineering is in everything around the model: schema and data quality, retrieval
correctness, permissions, failure modes, cost ceilings, and the evals that tell you when output
quality regressed.

---

## Engineering focus

| Area | What that means in practice |
|---|---|
| **Custom AI apps** | Chat and copilot surfaces, RAG over private corpora, structured extraction with schema validation, multi-step agent workflows with tool allowlists, retry/timeout policy, and per-request cost ceilings. |
| **Machine learning** | Feature engineering, training and evaluation pipelines, walk-forward/holdout validation rather than pooled fits, deployment behind versioned interfaces, and drift monitoring after release. |
| **Workflow automation** | Document and invoice processing, support triage, and content operations, all queue-backed, idempotent and replayable, with human review gates where a wrong answer is expensive. |
| **Web and application development** | TypeScript front ends (React/Next.js, Svelte), server-rendered and streaming UI, typed API boundaries, auth and role-based permissions, accessibility and Core Web Vitals as build criteria. |
| **Data engineering** | Ingest and normalization, time-series and relational modeling, backfills and gap detection, retention and archival policy, restore-tested backups. |
| **DevOps / MLOps** | Dockerized local and production parity, CI/CD, infrastructure as code, log/metric/trace collection, alerting, and model and pipeline monitoring. |

---

## Stack

**AI & machine learning**

![Claude](https://img.shields.io/badge/Claude-cf5230?style=flat-square&logo=anthropic&logoColor=white)
![OpenAI](https://img.shields.io/badge/OpenAI-cf5230?style=flat-square&logo=openai&logoColor=white)
![LangChain](https://img.shields.io/badge/LangChain-cf5230?style=flat-square&logo=langchain&logoColor=white)
![pgvector](https://img.shields.io/badge/pgvector-cf5230?style=flat-square&logo=postgresql&logoColor=white)
![Pinecone](https://img.shields.io/badge/Pinecone-cf5230?style=flat-square&logo=pinecone&logoColor=white)
![PyTorch](https://img.shields.io/badge/PyTorch-cf5230?style=flat-square&logo=pytorch&logoColor=white)
![scikit-learn](https://img.shields.io/badge/scikit--learn-cf5230?style=flat-square&logo=scikitlearn&logoColor=white)
![Hugging Face](https://img.shields.io/badge/Hugging_Face-cf5230?style=flat-square&logo=huggingface&logoColor=white)

**Frontend**

![React](https://img.shields.io/badge/React-111111?style=flat-square&logo=react&logoColor=61DAFB)
![Next.js](https://img.shields.io/badge/Next.js-111111?style=flat-square&logo=nextdotjs&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-111111?style=flat-square&logo=typescript&logoColor=3178C6)
![Svelte](https://img.shields.io/badge/Svelte-111111?style=flat-square&logo=svelte&logoColor=FF3E00)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-111111?style=flat-square&logo=tailwindcss&logoColor=38BDF8)
![GSAP](https://img.shields.io/badge/GSAP-111111?style=flat-square&logo=greensock&logoColor=88CE02)

**Backend & data**

![Node.js](https://img.shields.io/badge/Node.js-111111?style=flat-square&logo=nodedotjs&logoColor=5FA04E)
![Python](https://img.shields.io/badge/Python-111111?style=flat-square&logo=python&logoColor=FFD43B)
![Go](https://img.shields.io/badge/Go-111111?style=flat-square&logo=go&logoColor=00ADD8)
![FastAPI](https://img.shields.io/badge/FastAPI-111111?style=flat-square&logo=fastapi&logoColor=009688)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-111111?style=flat-square&logo=postgresql&logoColor=4169E1)
![Redis](https://img.shields.io/badge/Redis-111111?style=flat-square&logo=redis&logoColor=FF4438)
![Supabase](https://img.shields.io/badge/Supabase-111111?style=flat-square&logo=supabase&logoColor=3FCF8E)

**Infrastructure & MLOps**

![AWS](https://img.shields.io/badge/AWS-CAC18B?style=flat-square&logo=amazonwebservices&logoColor=111111)
![Vercel](https://img.shields.io/badge/Vercel-CAC18B?style=flat-square&logo=vercel&logoColor=111111)
![Docker](https://img.shields.io/badge/Docker-CAC18B?style=flat-square&logo=docker&logoColor=111111)
![Kubernetes](https://img.shields.io/badge/Kubernetes-CAC18B?style=flat-square&logo=kubernetes&logoColor=111111)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CAC18B?style=flat-square&logo=githubactions&logoColor=111111)
![Terraform](https://img.shields.io/badge/Terraform-CAC18B?style=flat-square&logo=terraform&logoColor=111111)
![Nginx](https://img.shields.io/badge/Nginx-CAC18B?style=flat-square&logo=nginx&logoColor=111111)

---

<img src="./assets/pipeline.png" alt="Sources → Pipelines → Model layer → Application → Operations" width="100%" />

---

## How we work

- **Environment parity.** Local development runs in Docker against the same images and service
  topology as production; config comes from environment files, never from committed secrets.
- **Reviewed changes.** Feature branches and pull requests, with review before merge to `main`.
  Migrations are explicit, ordered, and paired with a rollback path.
- **Verified before "done".** Changes are checked against a running instance (logs, network,
  rendered output) rather than declared complete on a clean build. A green build is not evidence
  that a page renders.
- **Evals for AI features.** Prompt and model changes are measured against a fixed regression set,
  with cost and latency tracked alongside output quality. No shipping on vibes.
- **Observability by default.** Structured logs, metrics, and alerting from day one, plus tracing
  for multi-step and agent workflows so failures are attributable to a step, not to "the AI".
- **Data hygiene.** Schema constraints, gap detection, and restore-tested backups. Backups that
  have never been restored are not backups.
- **Documented handoff.** Runbooks and READMEs live in the repo so operations do not depend on one
  person's memory.

---

## Security

Security is part of the build, not a pass at the end.

- **Least privilege.** Credentials are managed outside the codebase, and access is granted per
  engagement and revoked when it ends.
- **Untrusted input at every boundary.** Validation on inbound data, and model output and retrieved
  documents treated as untrusted too, with prompt injection assumed by default.
- **Maintained, not just launched.** Dependency and platform patching on a schedule, edge
  protection for public sites, and a documented response path when something does get through.

---

## Selected work

Every card links to the live system.

**AI systems and platforms**

<p align="center">
<a href="https://aibac.us"><img src="./assets/card-aibacus.png" width="32%" alt="Aibacus: AI and ML platform. Python, Go, Kafka, TimescaleDB, MLflow, Grafana" /></a>
<img src="./assets/card-holmes.png" width="32%" alt="Holmes AI: LLM application. SvelteKit, TypeScript, Claude API, SQLite, Docker" />
<a href="https://webdevs.net"><img src="./assets/card-webdevs.png" width="32%" alt="webdevs.net: site with on-site assistant. Next.js, TypeScript, Tailwind, GSAP, Ollama or Claude" /></a>
</p>

**Web and app work**

<p align="center">
<a href="https://photosurgeon.net"><img src="./assets/card-photosurgeon.png" width="24%" alt="Photosurgeon: web app" /></a>
<a href="https://parkplazabc.com"><img src="./assets/card-parkplaza.png" width="24%" alt="Park Plaza: website" /></a>
<a href="https://tiamovail.com"><img src="./assets/card-tiamovail.png" width="24%" alt="Ti Amo Vail: mobile app" /></a>
<a href="https://colleenwilcoxsculpture.com"><img src="./assets/card-colleen.png" width="24%" alt="Colleen Wilcox: sculpture gallery site" /></a>
</p>

Aibacus and Holmes AI are platforms we build and operate; the web and app work is client delivery.
Case studies and screenshots: [webdevs.net/portfolio](https://webdevs.net/portfolio)

---

## Repository conventions

Anyone working in this org can expect the same shape across repos:

| | |
|---|---|
| `README.md` | What the project is, how to run it locally, how it deploys |
| `docker-compose*.yml` / `Dockerfile` | Local and production containers; local mirrors production |
| `.env.example` | Every required variable, documented, with no real values |
| `deploy.sh` / CI workflow | The one supported deploy path for that project |
| `docs/` | Architecture notes, runbooks, and migration/incident history where they exist |

Client repositories are private, and access is granted per engagement. Public repos here are the
exception rather than the rule.

---

## Contact

<div align="center">

Technical inquiries welcome. California, USA.

[![Website](https://img.shields.io/badge/webdevs.net-cf5230?style=for-the-badge&logo=googlechrome&logoColor=white)](https://webdevs.net)
[![Email](https://img.shields.io/badge/support@webdevs.net-CAC18B?style=for-the-badge&logo=maildotru&logoColor=111111&labelColor=CAC18B)](mailto:support@webdevs.net)
[![Phone](https://img.shields.io/badge/(720)_772--9972-1a1a1a?style=for-the-badge&logo=telegraph&logoColor=cf5230)](tel:+17207729972)

[![Services](https://img.shields.io/badge/Services-0d0d0d?style=for-the-badge&logoColor=white)](https://webdevs.net/services)
[![Portfolio](https://img.shields.io/badge/Portfolio-0d0d0d?style=for-the-badge&logoColor=white)](https://webdevs.net/portfolio)
[![Contact_form](https://img.shields.io/badge/Contact_form-0d0d0d?style=for-the-badge&logoColor=white)](https://webdevs.net/contact)

</div>
