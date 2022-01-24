#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  condvar; } ;
typedef  TYPE_1__ vlc_static_cond_t ;
struct TYPE_9__ {scalar_t__ hev; } ;
typedef  TYPE_2__ vlc_cond_t ;

/* Variables and functions */
 scalar_t__ NULLHANDLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 TYPE_1__* static_condvar_start ; 
 int /*<<< orphan*/  super_mutex ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (vlc_cond_t *p_condvar)
{
    FUNC5 (&super_mutex);

    if (p_condvar->hev == NULLHANDLE)
    {
        FUNC4 (p_condvar);

        vlc_static_cond_t *new_static_condvar;

        new_static_condvar = FUNC1 (sizeof (*new_static_condvar));
        if (FUNC3 (!new_static_condvar))
            FUNC0();

        FUNC2 (&new_static_condvar->condvar, p_condvar, sizeof (*p_condvar));
        new_static_condvar->next = static_condvar_start;
        static_condvar_start = new_static_condvar;
    }

    FUNC6 (&super_mutex);
}