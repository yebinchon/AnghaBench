#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vlc_thread_t ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * addr; } ;
struct TYPE_7__ {int killable; void* (* entry ) (void*) ;int /*<<< orphan*/  thread; TYPE_1__ wait; void* data; int /*<<< orphan*/  killed; int /*<<< orphan*/  finished; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  detached_thread ; 
 int /*<<< orphan*/  joinable_thread ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13 (vlc_thread_t *th, void *(*entry) (void *),
                           void *data, bool detach)
{
    vlc_thread_t thread = FUNC1 (sizeof (*thread));
    if (FUNC10(thread == NULL))
        return ENOMEM;

    int ret;

    sigset_t oldset;
    {
        sigset_t set;
        FUNC9 (&set);
        FUNC8 (&set, SIGHUP);
        FUNC7 (&set, SIGINT);
        FUNC7 (&set, SIGQUIT);
        FUNC7 (&set, SIGTERM);

        FUNC7 (&set, SIGPIPE); /* We don't want this one, really! */
        FUNC6 (SIG_BLOCK, &set, &oldset);
    }

    if (!detach)
        FUNC12(&thread->finished, 0);
    FUNC0(&thread->killed, false);
    thread->killable = true;
    thread->entry = entry;
    thread->data = data;
    thread->wait.addr = NULL;
    FUNC11(&thread->wait.lock);

    pthread_attr_t attr;
    FUNC3 (&attr);
    FUNC4 (&attr, detach ? PTHREAD_CREATE_DETACHED
                                               : PTHREAD_CREATE_JOINABLE);

    ret = FUNC5 (&thread->thread, &attr,
                          detach ? detached_thread : joinable_thread, thread);
    FUNC2 (&attr);

    FUNC6 (SIG_SETMASK, &oldset, NULL);
    *th = thread;
    return ret;
}