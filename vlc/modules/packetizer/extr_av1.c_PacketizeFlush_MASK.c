#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_8__ {int b_has_visible_frame; void* pts; void* dts; } ;
struct TYPE_7__ {int /*<<< orphan*/  p_chain; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_next_block_flags; scalar_t__ i_seen; TYPE_2__ tu; TYPE_1__ obus; int /*<<< orphan*/ * p_sequence_header_block; int /*<<< orphan*/ * p_sequence_header; } ;
typedef  TYPE_4__ av1_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 void* VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  obus ; 

__attribute__((used)) static void FUNC5(decoder_t *p_dec)
{
    av1_sys_t *p_sys = p_dec->p_sys;

    FUNC3(FUNC2(p_dec, false));

    if(p_sys->p_sequence_header)
    {
        FUNC0(p_sys->p_sequence_header);
        p_sys->p_sequence_header = NULL;
    }
    if(p_sys->p_sequence_header_block)
    {
        FUNC4(p_sys->p_sequence_header_block);
        p_sys->p_sequence_header_block = NULL;
    }

    FUNC3(p_sys->obus.p_chain);
    FUNC1(obus);

    p_sys->tu.dts = VLC_TICK_INVALID;
    p_sys->tu.pts = VLC_TICK_INVALID;
    p_sys->tu.b_has_visible_frame = false;
    p_sys->i_seen = 0;
    p_sys->i_next_block_flags = BLOCK_FLAG_DISCONTINUITY;
}