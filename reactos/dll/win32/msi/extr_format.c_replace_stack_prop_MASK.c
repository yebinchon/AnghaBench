#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_16__ {int type; } ;
struct TYPE_15__ {scalar_t__ package; void* propfailed; scalar_t__ record; } ;
struct TYPE_14__ {int n; int len; int type; } ;
typedef  int /*<<< orphan*/  STACK ;
typedef  TYPE_1__ FORMSTR ;
typedef  TYPE_2__ FORMAT ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 int FORMAT_ESCAPE ; 
 int FORMAT_LITERAL ; 
 int FORMAT_NUMBER ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,TYPE_1__*,void**,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,TYPE_1__*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static WCHAR *FUNC8( FORMAT *format, STACK *values,
                                  BOOL *propfound, BOOL *nonprop,
                                  int *oldsize, int *type, int *len )
{
    WCHAR *replaced;
    FORMSTR *content, *node;
    int n;

    *propfound = FALSE;
    *nonprop = FALSE;

    node = FUNC7(values);
    n = node->n;
    *oldsize = node->len;
    *type = FUNC6(values)->type;
    FUNC5(node);

    while ((node = FUNC7(values)))
    {
        *oldsize += node->len;

        if (*type != FORMAT_ESCAPE &&
            FUNC6(values) && node->type != *type)
            *type = FORMAT_LITERAL;

        FUNC5(node);
    }

    content = FUNC4(sizeof(FORMSTR));
    content->n = n + 1;
    content->len = *oldsize - 2;
    content->type = *type;

    if (*type == FORMAT_NUMBER && format->record)
    {
        replaced = FUNC0( format, content, len );
        if (replaced)
            *propfound = TRUE;
        else
            format->propfailed = TRUE;

        if (replaced)
            *type = FUNC3(replaced) ?
                FORMAT_NUMBER : FORMAT_LITERAL;
    }
    else if (format->package)
    {
        replaced = FUNC1( format, content, propfound, type, len );
    }
    else
    {
        *nonprop = TRUE;
        content->n--;
        content->len += 2;
        replaced = FUNC2( format, content, len );
    }
    FUNC5(content);
    return replaced;
}