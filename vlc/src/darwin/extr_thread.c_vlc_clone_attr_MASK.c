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
typedef  int /*<<< orphan*/  vlc_thread_t ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  VLC_STACKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8 (vlc_thread_t *th, pthread_attr_t *attr,
                           void *(*entry) (void *), void *data, int priority)
{
    int ret;

    sigset_t oldset;
    {
        sigset_t set;
        FUNC7 (&set);
        FUNC6 (&set, SIGHUP);
        FUNC5 (&set, SIGINT);
        FUNC5 (&set, SIGQUIT);
        FUNC5 (&set, SIGTERM);

        FUNC5 (&set, SIGPIPE); /* We don't want this one, really! */
        FUNC4 (SIG_BLOCK, &set, &oldset);
    }

    (void) priority;

#define VLC_STACKSIZE (128 * sizeof (void *) * 1024)

#ifdef VLC_STACKSIZE
    ret = FUNC2 (attr, VLC_STACKSIZE);
    FUNC0 (ret == 0); /* fails iif VLC_STACKSIZE is invalid */
#endif

    ret = FUNC3 (th, attr, entry, data);
    FUNC4 (SIG_SETMASK, &oldset, NULL);
    FUNC1 (attr);
    return ret;
}