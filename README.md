# .github

Org-level defaults for the **webdevs-net** organization.

- `profile/README.md`: the public landing page shown at [github.com/webdevs-net](https://github.com/webdevs-net).
- `profile/assets/`: rendered graphics used by that README.
- `assets-src/`: HTML sources plus `build.sh` that regenerate those graphics with headless Chrome.

The presentation mirrors [webdevs.net](https://webdevs.net): black background, primary `#cf5230`,
secondary `#CAC18B`, Anton for display type and Plus Jakarta Sans for body copy.

## Updating the landing page

Edit `profile/README.md` for copy. For the graphics, edit the HTML in `assets-src/` and re-render:

```bash
./assets-src/build.sh
```
