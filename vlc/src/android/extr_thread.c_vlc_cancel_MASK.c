#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vlc_thread_t ;
typedef  int /*<<< orphan*/  atomic_int ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * addr; } ;
struct TYPE_5__ {TYPE_1__ wait; int /*<<< orphan*/  killed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (vlc_thread_t thread_id)
{
    atomic_int *addr;

    FUNC1(&thread_id->killed, true);

    FUNC3(&thread_id->wait.lock);
    addr = thread_id->wait.addr;
    if (addr != NULL)
    {
        FUNC0(addr, 1, memory_order_relaxed);
        FUNC2(addr);
    }
    FUNC4(&thread_id->wait.lock);
}