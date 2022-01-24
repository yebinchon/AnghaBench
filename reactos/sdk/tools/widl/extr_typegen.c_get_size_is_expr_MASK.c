#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  type_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ expr_t ;

/* Variables and functions */
 scalar_t__ EXPR_VOID ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 

expr_t *FUNC5(const type_t *t, const char *name)
{
    expr_t *x = NULL;

    for ( ; FUNC1(t); t = FUNC3(t))
        if (FUNC4(t) &&
            FUNC2(t)->type != EXPR_VOID)
        {
            if (!x)
                x = FUNC2(t);
            else
                FUNC0("%s: multidimensional conformant"
                      " arrays not supported at the top level\n",
                      name);
        }

    return x;
}