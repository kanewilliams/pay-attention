lint:
    uv run ruff check src/ tests/

format:
    uv run ruff format src/ tests/

mypy:
    uv run mypy src/

test:
    uv run pytest tests/ -v

check: format lint mypy test

clean:
    find . -type d -name __pycache__ -exec rm -rf {} +
    find . -type d -name .mypy_cache -exec rm -rf {} +
    find . -type d -name .pytest_cache -exec rm -rf {} +