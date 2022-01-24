#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_5__ {int /*<<< orphan*/  i_end_date; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
typedef  TYPE_3__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(decoder_t *p_dec)
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    FUNC0(&p_sys->audio.i_end_date, VLC_TICK_INVALID);
}