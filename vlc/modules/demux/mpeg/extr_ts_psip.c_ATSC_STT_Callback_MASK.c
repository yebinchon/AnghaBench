#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_6__* p_stt; } ;
typedef  TYPE_3__ ts_psip_context_t ;
struct TYPE_16__ {TYPE_1__* p_psip; } ;
struct TYPE_18__ {scalar_t__ type; scalar_t__ i_pid; TYPE_2__ u; } ;
typedef  TYPE_4__ ts_pid_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_19__ {scalar_t__ p_sys; } ;
typedef  TYPE_5__ dvbpsi_t ;
struct TYPE_20__ {int /*<<< orphan*/  i_gps_utc_offset; int /*<<< orphan*/  i_system_time; } ;
typedef  TYPE_6__ dvbpsi_atsc_stt_t ;
struct TYPE_21__ {int /*<<< orphan*/  out; TYPE_8__* p_sys; } ;
typedef  TYPE_7__ demux_t ;
struct TYPE_22__ {int /*<<< orphan*/  i_network_time; int /*<<< orphan*/  i_network_time_update; } ;
typedef  TYPE_8__ demux_sys_t ;
struct TYPE_15__ {TYPE_5__* handle; TYPE_3__* p_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 scalar_t__ ATSC_BASE_PID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  ATSC_MGT_TABLE_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ES_OUT_SET_EPG_TIME ; 
 int /*<<< orphan*/  MGT ; 
 scalar_t__ TYPE_PSIP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10( void *p_cb_basepid, dvbpsi_atsc_stt_t* p_stt )
{
    ts_pid_t *p_base_pid = (ts_pid_t *) p_cb_basepid;
    if( FUNC9(p_base_pid->type != TYPE_PSIP || p_base_pid->i_pid != ATSC_BASE_PID) )
    {
        FUNC3( p_base_pid->type == TYPE_PSIP );
        FUNC3( p_base_pid->i_pid == ATSC_BASE_PID );
        FUNC5( p_stt );
        return;
    }
    demux_t *p_demux = (demux_t *) p_base_pid->u.p_psip->handle->p_sys;
    demux_sys_t *p_sys = p_demux->p_sys;
    ts_psip_context_t *p_ctx = p_base_pid->u.p_psip->p_ctx;
    dvbpsi_t *p_handle = p_base_pid->u.p_psip->handle;

    if( !p_ctx->p_stt ) /* First call */
    {
        if( !FUNC0( p_handle, MGT, ATSC_MGT_TABLE_ID, 0x00, p_base_pid ) )
        {
            FUNC7( p_demux, "Can't attach MGT decoder to pid %d", ATSC_BASE_PID );
            FUNC1( p_handle );
            FUNC5( p_ctx->p_stt );
            p_stt = NULL;
        }
    }
    else
    {
        FUNC5( p_ctx->p_stt );
    }

    if( p_stt )
    {
        time_t i_current_time = FUNC4( p_stt->i_system_time,
                                                         p_stt->i_gps_utc_offset );
        FUNC2( i_current_time );
        p_sys->i_network_time =  i_current_time;
        p_sys->i_network_time_update = FUNC8(NULL);

        FUNC6( p_demux->out, ES_OUT_SET_EPG_TIME, p_sys->i_network_time );
    }

    p_ctx->p_stt = p_stt;
}