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
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_5__ {int b_recovery_point; int b_need_ts; int /*<<< orphan*/  dts; int /*<<< orphan*/  sets; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  MISSING ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *p_private, bool b_flush)
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    block_t *p_out = FUNC0(p_sys, false);
    if(p_out)
        FUNC1(p_out);

    if(b_flush)
    {
        p_sys->sets = MISSING;
        p_sys->b_recovery_point = false;
    }
    p_sys->b_need_ts = true;
    FUNC2(&p_sys->dts, VLC_TICK_INVALID);
}