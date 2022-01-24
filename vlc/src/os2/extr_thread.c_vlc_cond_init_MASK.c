#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ signaled; scalar_t__ waiters; int /*<<< orphan*/  hevAck; int /*<<< orphan*/  hev; } ;
typedef  TYPE_1__ vlc_cond_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2 (vlc_cond_t *p_condvar)
{
    if (FUNC0 (NULL, &p_condvar->hev, 0, FALSE) ||
        FUNC0 (NULL, &p_condvar->hevAck, 0, FALSE))
        FUNC1();

    p_condvar->waiters = 0;
    p_condvar->signaled = 0;
}