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
typedef  int /*<<< orphan*/  vlc_clock_t ;
struct spu_channel {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {TYPE_2__* p; } ;
typedef  TYPE_1__ spu_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  channels; } ;
typedef  TYPE_2__ spu_private_t ;
typedef  enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;

/* Variables and functions */
 int VLC_VOUT_ORDER_PRIMARY ; 
 scalar_t__ VOUT_SPU_CHANNEL_INVALID ; 
 scalar_t__ FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct spu_channel*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct spu_channel) ; 

ssize_t FUNC5(spu_t *spu, vlc_clock_t *clock,
                                    enum vlc_vout_order *order)
{
    spu_private_t *sys = spu->p;

    FUNC2(&sys->lock);

    ssize_t channel_id = FUNC0(spu, order);

    if (channel_id != VOUT_SPU_CHANNEL_INVALID)
    {
        struct spu_channel channel;
        FUNC1(&channel, channel_id,
                         order ? *order : VLC_VOUT_ORDER_PRIMARY, clock);
        if (FUNC4(&sys->channels, channel))
        {
            FUNC3(&sys->lock);
            return channel_id;
        }
    }

    FUNC3(&sys->lock);

    return VOUT_SPU_CHANNEL_INVALID;
}