#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* proc ) (int /*<<< orphan*/ ) ;struct TYPE_2__* next; } ;
typedef  TYPE_1__ vlc_cleanup_t ;
struct vlc_thread {int /*<<< orphan*/ * data; int /*<<< orphan*/  done_event; TYPE_1__* cleaners; scalar_t__ killed; scalar_t__ killable; int /*<<< orphan*/  cancel_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_thread*) ; 
 struct vlc_thread* FUNC6 () ; 

void FUNC7 (void)
{
    struct vlc_thread *th = FUNC6 ();
    if (th == NULL)
        return; /* Main thread - cannot be cancelled anyway */

    /* This check is needed for the case that vlc_cancel() is followed by
     * vlc_testcancel() without any cancellation point */
    if( FUNC1( th->cancel_event, 0 ) == NO_ERROR )
        FUNC4( th );

    if (th->killable && th->killed)
    {
        for (vlc_cleanup_t *p = th->cleaners; p != NULL; p = p->next)
             p->proc (p->data);

        FUNC0( th->done_event );
        th->data = NULL; /* TODO: special value? */
        FUNC5 (th);
        FUNC2();
    }
}