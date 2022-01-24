#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct spu_channel {int /*<<< orphan*/  delay; scalar_t__ clock; } ;
struct TYPE_6__ {TYPE_2__* p; } ;
typedef  TYPE_1__ spu_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ spu_private_t ;

/* Variables and functions */
 struct spu_channel* FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct spu_channel*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(spu_t *spu, size_t channel_id)
{
    spu_private_t *sys = spu->p;
    FUNC4(&sys->lock);
    struct spu_channel *channel = FUNC0(spu, channel_id);
    FUNC1(sys, channel);
    if (channel->clock)
    {
        FUNC2(channel->clock);
        FUNC3(channel->clock, channel->delay);
    }
    FUNC5(&sys->lock);
}