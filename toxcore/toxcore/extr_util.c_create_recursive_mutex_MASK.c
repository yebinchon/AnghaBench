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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_MUTEX_RECURSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(pthread_mutex_t *mutex)
{
    pthread_mutexattr_t attr;

    if (FUNC2(&attr) != 0)
        return -1;

    if (FUNC3(&attr, PTHREAD_MUTEX_RECURSIVE) != 0) {
        FUNC1(&attr);
        return -1;
    }

    /* Create queue mutex */
    if (FUNC0(mutex, &attr) != 0) {
        FUNC1(&attr);
        return -1;
    }

    FUNC1(&attr);

    return 0;
}