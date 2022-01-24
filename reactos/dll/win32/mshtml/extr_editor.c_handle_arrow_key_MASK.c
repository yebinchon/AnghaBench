#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nsIDOMKeyEvent ;
typedef  scalar_t__ cpp_bool ;
struct TYPE_5__ {TYPE_1__* doc_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  nscontainer; } ;
typedef  TYPE_2__ HTMLDocument ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(HTMLDocument *This, nsIDOMKeyEvent *event, const char * const cmds[4])
{
    int i=0;
    cpp_bool b;

    FUNC1(event, &b);
    if(b)
        i |= 1;

    FUNC2(event, &b);
    if(b)
        i |= 2;

    if(cmds[i])
        FUNC0(This->doc_obj->nscontainer, cmds[i]);

    FUNC3(event);
}