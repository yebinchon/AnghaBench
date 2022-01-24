#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ stgclass; int /*<<< orphan*/  attrs; int /*<<< orphan*/  name; int /*<<< orphan*/  type; scalar_t__ eval; } ;
typedef  TYPE_2__ var_t ;
struct TYPE_9__ {TYPE_2__* var; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef  TYPE_3__ statement_t ;

/* Variables and functions */
 scalar_t__ STG_EXTERN ; 
 scalar_t__ STG_NONE ; 
 scalar_t__ STG_REGISTER ; 
 int /*<<< orphan*/  STMT_DECLARATION ; 
 scalar_t__ TYPE_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static statement_t *FUNC7(var_t *var)
{
    statement_t *stmt = FUNC3(STMT_DECLARATION);
    stmt->u.var = var;
    if (var->stgclass == STG_EXTERN && var->eval)
        FUNC6("'%s' initialised and declared extern\n", var->name);
    if (FUNC2(var))
    {
        if (var->eval)
            FUNC4(var);
    }
    else if (FUNC5(var->type) == TYPE_FUNCTION)
        FUNC0(var->name, var->attrs);
    else if (var->stgclass == STG_NONE || var->stgclass == STG_REGISTER)
        FUNC1("instantiation of data is illegal\n");
    return stmt;
}