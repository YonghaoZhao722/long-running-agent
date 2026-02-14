{
  "project": "{{PROJECT_NAME}}",
  "version": "1.0.0",
  "created_at": "{{CREATED_AT}}",
  "tasks": [
    {
      "id": "setup-project",
      "description": "Set up project structure and configuration",
      "priority": 1,
      "dependencies": [],
      "passes": false
    },
    {
      "id": "implement-core",
      "description": "Implement core functionality",
      "priority": 2,
      "dependencies": ["setup-project"],
      "passes": false
    },
    {
      "id": "add-tests",
      "description": "Add unit tests for core functionality",
      "priority": 3,
      "dependencies": ["implement-core"],
      "passes": false
    },
    {
      "id": "add-documentation",
      "description": "Add documentation and README",
      "priority": 5,
      "dependencies": ["implement-core"],
      "passes": false
    },
    {
      "id": "finalize",
      "description": "Final review and cleanup",
      "priority": 4,
      "dependencies": ["add-tests", "add-documentation"],
      "passes": false
    }
  ]
}
