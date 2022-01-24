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
struct vlc_thread {int killable; int /*<<< orphan*/  done_event; int /*<<< orphan*/  data; int /*<<< orphan*/  (* entry ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_key ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_thread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vlc_thread*) ; 

__attribute__((used)) static void FUNC4( void *p )
{
    struct vlc_thread *th = p;

    FUNC3 (thread_key, th);
    th->killable = true;
    th->data = th->entry (th->data);
    FUNC0( th->done_event );
    FUNC2 (th);
}