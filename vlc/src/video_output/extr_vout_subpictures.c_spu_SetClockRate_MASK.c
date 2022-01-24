#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct spu_channel {float rate; int /*<<< orphan*/  clock; } ;
struct TYPE_5__ {TYPE_2__* p; } ;
typedef  TYPE_1__ spu_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ spu_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct spu_channel* FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(spu_t *spu, size_t channel_id, float rate)
{
    spu_private_t *sys = spu->p;

    FUNC2(&sys->lock);
    struct spu_channel *channel = FUNC1(spu, channel_id);
    FUNC0(channel->clock);
    channel->rate = rate;
    FUNC3(&sys->lock);
}