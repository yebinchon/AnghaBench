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
typedef  int /*<<< orphan*/  vlc_sem_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (vlc_sem_t *sem)
{
    int val;

    do
        if (FUNC1(FUNC2 (sem) == 0))
            return;
    while ((val = errno) == EINTR);

    FUNC0 ("locking semaphore");
}