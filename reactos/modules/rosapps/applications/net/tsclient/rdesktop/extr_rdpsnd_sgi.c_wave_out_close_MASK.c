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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audioconfig ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_port ; 
 TYPE_2__* packet_queue ; 
 size_t queue_hi ; 
 size_t queue_lo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6(void)
{
	/* Ack all remaining packets */
#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_close: begin\n");
#endif

	while (queue_lo != queue_hi)
	{
		FUNC5(packet_queue[queue_lo].tick, packet_queue[queue_lo].index);
		FUNC4(packet_queue[queue_lo].s.data);
		queue_lo = (queue_lo + 1) % MAX_QUEUE;
	}
	FUNC1(output_port, 0);

	FUNC0(output_port);
	FUNC2(audioconfig);
#if (defined(IRIX_DEBUG))
	fprintf(stderr, "wave_out_close: returning\n");
#endif
}