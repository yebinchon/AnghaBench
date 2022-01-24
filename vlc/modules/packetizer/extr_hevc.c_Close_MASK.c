#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_16__ {TYPE_8__* p_sys; } ;
typedef  TYPE_7__ decoder_t ;
struct TYPE_12__ {int /*<<< orphan*/  p_chain; } ;
struct TYPE_11__ {int /*<<< orphan*/  p_chain; } ;
struct TYPE_10__ {int /*<<< orphan*/  p_chain; } ;
struct TYPE_17__ {int /*<<< orphan*/  p_ccs; int /*<<< orphan*/  p_timing; TYPE_6__* rg_vps; TYPE_5__* rg_sps; TYPE_4__* rg_pps; TYPE_3__ post; TYPE_2__ pre; TYPE_1__ frame; int /*<<< orphan*/  packetizer; } ;
typedef  TYPE_8__ decoder_sys_t ;
struct TYPE_15__ {scalar_t__ p_nal; scalar_t__ p_decoded; } ;
struct TYPE_14__ {scalar_t__ p_nal; scalar_t__ p_decoded; } ;
struct TYPE_13__ {scalar_t__ p_nal; scalar_t__ p_decoded; } ;

/* Variables and functions */
 unsigned int HEVC_PPS_ID_MAX ; 
 unsigned int HEVC_SPS_ID_MAX ; 
 unsigned int HEVC_VPS_ID_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(vlc_object_t *p_this)
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    FUNC8(&p_sys->packetizer);

    FUNC0(p_sys->frame.p_chain);
    FUNC0(p_sys->pre.p_chain);
    FUNC0(p_sys->post.p_chain);

    for(unsigned i=0;i<=HEVC_PPS_ID_MAX; i++)
    {
        if(p_sys->rg_pps[i].p_decoded)
            FUNC4(p_sys->rg_pps[i].p_decoded);
        if(p_sys->rg_pps[i].p_nal)
            FUNC1(p_sys->rg_pps[i].p_nal);
    }

    for(unsigned i=0;i<=HEVC_SPS_ID_MAX; i++)
    {
        if(p_sys->rg_sps[i].p_decoded)
            FUNC5(p_sys->rg_sps[i].p_decoded);
        if(p_sys->rg_sps[i].p_nal)
            FUNC1(p_sys->rg_sps[i].p_nal);
    }

    for(unsigned i=0;i<=HEVC_VPS_ID_MAX; i++)
    {
        if(p_sys->rg_vps[i].p_decoded)
            FUNC6(p_sys->rg_vps[i].p_decoded);
        if(p_sys->rg_vps[i].p_nal)
            FUNC1(p_sys->rg_vps[i].p_nal);
    }

    FUNC7( p_sys->p_timing );

    FUNC2( p_sys->p_ccs );

    FUNC3(p_sys);
}