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
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*,int) ; 

int FUNC3 (vlc_thread_t *th, void *(*entry) (void *), void *data,
                      int priority)
{
    vlc_thread_t dummy;
    pthread_attr_t attr;

    if (th == NULL)
        th = &dummy;

    FUNC0 (&attr);
    FUNC1 (&attr, PTHREAD_CREATE_DETACHED);
    return FUNC2 (th, &attr, entry, data, priority);
}