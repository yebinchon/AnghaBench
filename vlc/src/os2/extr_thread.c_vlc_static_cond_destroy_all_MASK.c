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
struct TYPE_4__ {int /*<<< orphan*/  condvar; struct TYPE_4__* next; } ;
typedef  TYPE_1__ vlc_static_cond_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* static_condvar_start ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (void)
{
    vlc_static_cond_t *static_condvar;
    vlc_static_cond_t *static_condvar_next;


    for (static_condvar = static_condvar_start; static_condvar;
         static_condvar = static_condvar_next)
    {
        static_condvar_next = static_condvar->next;

        FUNC1 (&static_condvar->condvar);
        FUNC0 (static_condvar);
    }
}