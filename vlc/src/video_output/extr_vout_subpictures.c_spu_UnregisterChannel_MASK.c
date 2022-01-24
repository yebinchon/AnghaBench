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
struct spu_channel {int dummy; } ;
struct TYPE_6__ {TYPE_2__* p; } ;
typedef  TYPE_1__ spu_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  channels; } ;
typedef  TYPE_2__ spu_private_t ;

/* Variables and functions */
 struct spu_channel* FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct spu_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 

void FUNC5(spu_t *spu, size_t channel_id)
{
    spu_private_t *sys = spu->p;

    FUNC2(&sys->lock);
    struct spu_channel *channel = FUNC0(spu, channel_id);
    FUNC1(sys, channel);
    FUNC4(&sys->channels, channel_id);
    FUNC3(&sys->lock);
}