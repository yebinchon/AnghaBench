#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * expr_line ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

char_u *
FUNC3()
{
    char_u	*expr_copy;
    char_u	*rv;
    static int	nested = 0;

    if (expr_line == NULL)
	return NULL;

    /* Make a copy of the expression, because evaluating it may cause it to be
     * changed. */
    expr_copy = FUNC2(expr_line);
    if (expr_copy == NULL)
	return NULL;

    /* When we are invoked recursively limit the evaluation to 10 levels.
     * Then return the string as-is. */
    if (nested >= 10)
	return expr_copy;

    ++nested;
    rv = FUNC0(expr_copy, NULL, TRUE);
    --nested;
    FUNC1(expr_copy);
    return rv;
}