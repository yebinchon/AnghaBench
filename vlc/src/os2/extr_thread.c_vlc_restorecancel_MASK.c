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
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct vlc_thread* FUNC1 () ; 

void FUNC2 (int state)
{
    struct vlc_thread *th = FUNC1 ();
    FUNC0 (state == false || state == true);

    if (th == NULL)
        return; /* Main thread - cannot be cancelled anyway */

    FUNC0 (!th->killable);
    th->killable = state != 0;
}