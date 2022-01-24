#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ s; int /*<<< orphan*/  index; int /*<<< orphan*/  tick; } ;

/* Variables and functions */
 size_t MAX_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * o_device ; 
 TYPE_2__* packet_queue ; 
 size_t queue_hi ; 
 size_t queue_lo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	/* Ack all remaining packets */
	while (queue_lo != queue_hi)
	{
		FUNC3(packet_queue[queue_lo].tick, packet_queue[queue_lo].index);
		FUNC2(packet_queue[queue_lo].s.data);
		queue_lo = (queue_lo + 1) % MAX_QUEUE;
	}

	if (o_device != NULL)
		FUNC0(o_device);

	FUNC1();
}