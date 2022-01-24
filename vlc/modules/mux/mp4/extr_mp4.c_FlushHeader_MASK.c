#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_15__ {scalar_t__ p_sys; } ;
typedef  TYPE_2__ sout_mux_t ;
struct TYPE_16__ {int i_pos; int b_header_sent; int /*<<< orphan*/  muxh; } ;
typedef  TYPE_3__ sout_mux_sys_t ;
struct TYPE_17__ {TYPE_1__* b; } ;
typedef  TYPE_4__ bo_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_HEADER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(sout_mux_t *p_mux)
{
    sout_mux_sys_t *p_sys = (sout_mux_sys_t*) p_mux->p_sys;

    if(p_sys->i_pos >= (((uint64_t)0x1) << 32))
        FUNC6(p_sys->muxh);

    /* Now add ftyp header */
    bo_t *ftyp = FUNC4(p_sys->muxh);
    if(!ftyp)
        return;

    bo_t *moov = FUNC5(p_sys->muxh, FUNC0(p_mux), 0);

    /* merge into a single block */
    FUNC2(ftyp, moov);

    /* add header flag for streaming server */
    ftyp->b->i_flags |= BLOCK_FLAG_HEADER;
    p_sys->i_pos += FUNC1(ftyp);
    FUNC3(p_mux, ftyp);
    p_sys->b_header_sent = true;
}