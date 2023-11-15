# {{ project-title }} Catalog

`{{ description }}` is an [Archetect](https://archetect.github.io/) Catalog.

## Rendering

To generate an Archetype from this Catalog, copy and execute the following command:

```sh
archetect catalog {% if git_repo %}{{ git_repo }}{% else %}<git repo>{% endif %}
```
