#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int type; int n; int len; void* propfound; void* nonprop; } ;
typedef  TYPE_1__ WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_16__ {int n; } ;
typedef  int /*<<< orphan*/  STACK ;
typedef  TYPE_1__ FORMSTR ;
typedef  TYPE_3__ FORMAT ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 void* FALSE ; 
 int FORMAT_LBRACE ; 
 int FORMAT_LBRACK ; 
 int FORMAT_LITERAL ; 
 int FORMAT_NUMBER ; 
 void* TRUE ; 
 TYPE_1__* FUNC0 (TYPE_3__*,void*,void*,int,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,void**,void**,int*,int*,int*) ; 
 TYPE_1__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,void**,void**,int*,int*,int*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC6(FORMAT *format, STACK *stack, STACK *values)
{
    WCHAR *replaced = NULL;
    FORMSTR *beg, *top, *node;
    BOOL propfound = FALSE, nonprop = FALSE, group = FALSE;
    int type, n, len = 0, oldsize = 0;

    node = FUNC4(values);
    type = node->type;
    n = node->n;

    if (type == FORMAT_LBRACK)
        replaced = FUNC3( format, values, &propfound,
                                       &nonprop, &oldsize, &type, &len );
    else if (type == FORMAT_LBRACE)
    {
        replaced = FUNC2( format, values, &propfound,
                                        &nonprop, &oldsize, &type, &len );
        group = TRUE;
    }

    format->n = n;
    beg = FUNC0( format, propfound, nonprop, oldsize, type, replaced, len );
    FUNC1(replaced);
    if (!beg)
        return ERROR_SUCCESS;

    format->n = beg->n + beg->len;

    top = FUNC4(stack);
    if (top)
    {
        type = top->type;

        if ((type == FORMAT_LITERAL || type == FORMAT_NUMBER) &&
            type == beg->type)
        {
            top->len += beg->len;

            if (group)
                top->nonprop = FALSE;

            if (type == FORMAT_LITERAL)
                top->nonprop = beg->nonprop;

            if (beg->propfound)
                top->propfound = TRUE;

            FUNC1(beg);
            return ERROR_SUCCESS;
        }
    }

    FUNC5(stack, beg);
    return ERROR_SUCCESS;
}