#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dsp_; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__ s; int /*<<< orphan*/  index; int /*<<< orphan*/  tick; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_FLUSH ; 
 int /*<<< orphan*/ * FLUSHW ; 
 int /*<<< orphan*/  I_FLUSH ; 
 size_t MAX_QUEUE ; 
 TYPE_3__* This ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
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
		FUNC1(packet_queue[queue_lo].s.data);
		queue_lo = (queue_lo + 1) % MAX_QUEUE;
	}

#if defined I_FLUSH && defined FLUSHW
	/* Flush the audiobuffer */
	ioctl(This->dsp_, I_FLUSH, FLUSHW);
#endif
#if defined AUDIO_FLUSH
	ioctl(This->dsp_, AUDIO_FLUSH, NULL);
#endif
	FUNC0(This->dsp_);
}