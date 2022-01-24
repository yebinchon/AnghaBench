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
typedef  struct vlc_thread* vlc_thread_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * addr; } ;
struct vlc_thread {void* (* entry ) (void*) ;int killable; int /*<<< orphan*/ * id; TYPE_1__ wait; int /*<<< orphan*/ * cleaners; int /*<<< orphan*/  killed; void* data; } ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 uintptr_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vlc_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (struct vlc_thread*) ; 
 struct vlc_thread* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_entry ; 

__attribute__((used)) static int FUNC8 (vlc_thread_t *p_handle, bool detached,
                           void *(*entry) (void *), void *data, int priority)
{
    struct vlc_thread *th = FUNC6 (sizeof (*th));
    if (FUNC7(th == NULL))
        return ENOMEM;
    th->entry = entry;
    th->data = data;
    th->killable = false; /* not until vlc_entry() ! */
    FUNC4(&th->killed, false);
    th->cleaners = NULL;
    th->wait.addr = NULL;
    FUNC1(&th->wait.lock);

    /* When using the MSVCRT C library you have to use the _beginthreadex
     * function instead of CreateThread, otherwise you'll end up with
     * memory leaks and the signal functions not working (see Microsoft
     * Knowledge Base, article 104641) */
    uintptr_t h = FUNC3 (NULL, 0, vlc_entry, th, 0, NULL);
    if (h == 0)
    {
        int err = errno;
        FUNC5 (th);
        return err;
    }

    if (detached)
    {
        FUNC0((HANDLE)h);
        th->id = NULL;
    }
    else
        th->id = (HANDLE)h;

    if (p_handle != NULL)
        *p_handle = th;

    if (priority)
        FUNC2 (th->id, priority);

    return 0;
}