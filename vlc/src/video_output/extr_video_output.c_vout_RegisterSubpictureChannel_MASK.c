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
struct TYPE_5__ {TYPE_1__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {scalar_t__ spu; int /*<<< orphan*/  dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

ssize_t FUNC2( vout_thread_t *vout )
{
    FUNC0(!vout->p->dummy);
    ssize_t channel = VOUT_SPU_CHANNEL_INVALID;

    if (vout->p->spu)
        channel = FUNC1(vout->p->spu);

    return channel;
}