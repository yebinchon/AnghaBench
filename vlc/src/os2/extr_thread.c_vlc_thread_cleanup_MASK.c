#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlc_threadvar_t ;
struct vlc_thread {int /*<<< orphan*/  cancel_sock; int /*<<< orphan*/  done_event; int /*<<< orphan*/  cancel_event; scalar_t__ detached; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* destroy ) (void*) ;struct TYPE_5__* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_thread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  super_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (TYPE_1__*) ; 
 TYPE_1__* vlc_threadvar_last ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8 (struct vlc_thread *th)
{
    vlc_threadvar_t key;

retry:
    /* TODO: use RW lock or something similar */
    FUNC4 (&super_mutex);
    for (key = vlc_threadvar_last; key != NULL; key = key->prev)
    {
        void *value = FUNC6 (key);
        if (value != NULL && key->destroy != NULL)
        {
            FUNC5 (&super_mutex);
            FUNC7 (key, NULL);
            key->destroy (value);
            goto retry;
        }
    }
    FUNC5 (&super_mutex);

    if (th->detached)
    {
        FUNC0 (th->cancel_event);
        FUNC0 (th->done_event );

        FUNC2 (th->cancel_sock);

        FUNC1 (th);
    }
}