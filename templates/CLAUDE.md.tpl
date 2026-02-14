# Long-Running Agent Workflow

This project uses the longrunning-agent workflow for incremental progress across sessions.

## Project Overview

{{PROJECT_DESCRIPTION}}

## Workflow Instructions

When working on this project, follow these steps in order:

### 1. Read Recent Progress

```bash
cat progress.txt | tail -50
```

Understand what was done in previous sessions.

### 2. Review Task List

```bash
cat task.json
```

Find the next task where:
- `passes` is `false`
- All `dependencies` are satisfied (their `passes` is `true`)

### 3. Initialize Environment

If `init.sh` exists, run it to ensure the environment is ready:

```bash
./init.sh
```

### 4. Implement ONE Task

Focus on completing a single task:
- Make incremental, focused changes
- Write clean, maintainable code
- Follow project conventions

### 5. Test Thoroughly

Before marking a task complete:
- Run linting: `npm run lint` or equivalent
- Run tests: `npm test` or equivalent
- Build the project: `npm run build` or equivalent
- Manual testing if needed

### 6. Update Progress

Add an entry to `progress.txt`:

```
[YYYY-MM-DD HH:MM:SS] Completed: [task description]
[YYYY-MM-DD HH:MM:SS] [Details of changes made]
```

### 7. Mark Task Complete

Update `task.json`:
- Set `passes: true` for the completed task
- Update any related task statuses

### 8. Commit Changes

Make an atomic commit:

```bash
git add .
git commit -m "feat: [brief description of completed task]"
```

## Important Guidelines

- **One Task Per Session**: Focus on completing a single task
- **Test Before Commit**: Always verify tests pass
- **Atomic Commits**: Each commit should represent one logical change
- **Document Progress**: Keep progress.txt updated
- **Respect Dependencies**: Don't skip ahead to dependent tasks

## Project Structure

```
.
├── CLAUDE.md          # This file - workflow instructions
├── task.json          # Task list with priorities
├── progress.txt       # Progress log
├── init.sh            # Environment setup (optional)
└── src/               # Source code
```

## Task Priority Guide

- **1-2**: Critical, blocking other work
- **3-4**: High priority, should be done soon
- **5**: Normal priority
- **6-7**: Lower priority, can wait
- **8-10**: Nice to have, lowest priority
