let context = #{};

context.archetect_version = archetect::version();

context += prompt("Catalog Name:", "project-name", #{
  cases: [
    CasedValue(KebabCase), 
    FixedKeyCasedValue("project-title", TitleCase),
  ], 
});

context += prompt("Catalog Description:", "description", #{
  help: "Catalog Description",
});

context += prompt("Author:", "author_full", #{
  placeholder: "Your Name <your.name@domain.com>",
  help: "Author Name and Email",
});

context += prompt("Git Repo:", "git_repo", #{
  placeholder: "http://github.com/your-name/your-project",
  optional: true,
});

render(Directory("contents"), context)
