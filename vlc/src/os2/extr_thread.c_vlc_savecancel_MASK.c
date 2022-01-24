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
struct vlc_thread {int killable; } ;

/* Variables and functions */
 struct vlc_thread* FUNC0 () ; 

int FUNC1 (void)
{
    int state;

    struct vlc_thread *th = FUNC0 ();
    if (th == NULL)
        return false; /* Main thread - cannot be cancelled anyway */

    state = th->killable;
    th->killable = false;
    return state;
}