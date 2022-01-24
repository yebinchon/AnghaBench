#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {char* deformatted; scalar_t__ groups; void* propfailed; void* groupfailed; } ;
struct TYPE_9__ {int n; int len; int type; scalar_t__ propfound; scalar_t__ nonprop; } ;
typedef  int /*<<< orphan*/  STACK ;
typedef  TYPE_1__ FORMSTR ;
typedef  TYPE_2__ FORMAT ;
typedef  void* BOOL ;

/* Variables and functions */
 void* FALSE ; 
 int FORMAT_LITERAL ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,TYPE_1__*,int*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static WCHAR *FUNC4( FORMAT *format, STACK *values,
                                   BOOL *propfound, BOOL *nonprop,
                                   int *oldsize, int *type, int *len )
{
    WCHAR *replaced;
    FORMSTR *content, *node;
    int n;

    *nonprop = FALSE;
    *propfound = FALSE;

    node = FUNC3(values);
    n = node->n;
    *oldsize = node->len;
    FUNC2(node);

    while ((node = FUNC3(values)))
    {
        *oldsize += node->len;

        if (node->nonprop)
            *nonprop = TRUE;

        if (node->propfound)
            *propfound = TRUE;

        FUNC2(node);
    }

    content = FUNC1(sizeof(FORMSTR));
    content->n = n;
    content->len = *oldsize;
    content->type = FORMAT_LITERAL;

    if (!format->groupfailed && (*oldsize == 2 ||
        (format->propfailed && !*nonprop)))
    {
        FUNC2(content);
        return NULL;
    }
    else if (format->deformatted[content->n + 1] == '{' &&
             format->deformatted[content->n + content->len - 2] == '}')
    {
        format->groupfailed = FALSE;
        content->len = 0;
    }
    else if (*propfound && !*nonprop &&
             !format->groupfailed && format->groups == 0)
    {
        content->n++;
        content->len -= 2;
    }
    else
    {
        if (format->groups != 0)
            format->groupfailed = TRUE;

        *nonprop = TRUE;
    }

    replaced = FUNC0( format, content, len );
    *type = content->type;
    FUNC2(content);

    if (format->groups == 0)
        format->propfailed = FALSE;

    return replaced;
}