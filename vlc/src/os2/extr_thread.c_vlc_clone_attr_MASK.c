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
typedef  struct vlc_thread* vlc_thread_t ;
struct vlc_thread {void* (* entry ) (void*) ;int detached; int killable; int killed; scalar_t__ cancel_sock; int /*<<< orphan*/  done_event; int /*<<< orphan*/  cancel_event; scalar_t__ tid; int /*<<< orphan*/ * cleaners; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  PRTYS_THREAD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct vlc_thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct vlc_thread*) ; 
 struct vlc_thread* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_entry ; 

__attribute__((used)) static int FUNC11 (vlc_thread_t *p_handle, bool detached,
                           void *(*entry) (void *), void *data, int priority)
{
    struct vlc_thread *th = FUNC7 (sizeof (*th));
    if (FUNC10(th == NULL))
        return ENOMEM;
    th->entry = entry;
    th->data = data;
    th->detached = detached;
    th->killable = false; /* not until vlc_entry() ! */
    th->killed = false;
    th->cleaners = NULL;

    if( FUNC1 (NULL, &th->cancel_event, 0, FALSE))
        goto error;
    if( FUNC1 (NULL, &th->done_event, 0, FALSE))
        goto error;

    th->cancel_sock = FUNC8 (AF_LOCAL, SOCK_STREAM, 0);
    if( th->cancel_sock < 0 )
        goto error;

    th->tid = FUNC5 (vlc_entry, NULL, 1024 * 1024, th);
    if((int)th->tid == -1)
        goto error;

    if (p_handle != NULL)
        *p_handle = th;

    if (priority)
        FUNC2(PRTYS_THREAD,
                       FUNC3(priority),
                       FUNC4(priority),
                       th->tid);

    return 0;

error:
    FUNC9 (th->cancel_sock);
    FUNC0 (th->cancel_event);
    FUNC0 (th->done_event);
    FUNC6 (th);

    return ENOMEM;
}