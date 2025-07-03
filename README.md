#  Task 7 – Creating Views in SQL

## Objective

The goal of this task is to understand how to **create, manage, and use views in SQL**. Views allow us to encapsulate complex SELECT queries into reusable, named virtual tables, improving readability, abstraction, and security in database design.

## Tools Used

- MySQL Workbench  
- DB Browser for SQLite  
These tools support view creation and management using standard SQL syntax.

##  What is a View?

A **view** is a saved SQL query that acts like a virtual table. It does not store data itself, but dynamically reflects the results of its underlying SELECT query whenever it's accessed.

Views can:
- Simplify access to complex joins or calculated columns.
- Improve readability and maintenance of large queries.
- Help enforce security by restricting data access.
- Provide a layer of abstraction for business users or reporting tools.

##  Key Concepts Covered

###  Creating Views
- Use `CREATE VIEW` to define a virtual table based on one or more base tables.
- Can include joins, aggregations, filters, and calculated columns.

###  Using Views
- Views can be queried just like regular tables.
- Used to build consistent data layers for analytics, reporting, and app development.

###  Updating Views
- Simple views (on a single table, no aggregation) can sometimes be updated.
- Complex views may be **read-only** depending on the SQL engine and query structure.

###  Dropping Views
- When no longer needed, a view can be removed using a standard `DROP` command.

## Benefits of Views

1. **Abstraction**: Hide query complexity from the end user.
2. **Reusability**: Write complex logic once and use it in multiple queries.
3. **Security**: Restrict access to specific columns or rows through the view.
4. **Maintainability**: Makes schema changes easier to manage at one central place.

## Sample Use Cases (Described)

- A view that shows customer names with their total order amount.
- A view that filters only high-value orders for reporting.
- A view that joins multiple tables to expose business-friendly column names.
- A view that hides sensitive data fields from general users.

## Deliverables

- View definitions created using `CREATE VIEW`.
- Screenshots of view creation and usage.
- Example queries showing how to use the views in SELECT statements.
- 
## Outcome

By completing this task, the learner will:
- Know how to encapsulate logic inside views for reuse.
- Understand the benefits of abstraction and security through views.
- Be able to manage views using supported tools and commands.
