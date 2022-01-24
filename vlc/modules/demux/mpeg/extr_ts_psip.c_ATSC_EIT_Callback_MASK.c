#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_51__   TYPE_9__ ;
typedef  struct TYPE_50__   TYPE_8__ ;
typedef  struct TYPE_49__   TYPE_7__ ;
typedef  struct TYPE_48__   TYPE_6__ ;
typedef  struct TYPE_47__   TYPE_5__ ;
typedef  struct TYPE_46__   TYPE_4__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_2__ ;
typedef  struct TYPE_43__   TYPE_1__ ;
typedef  struct TYPE_42__   TYPE_19__ ;
typedef  struct TYPE_41__   TYPE_15__ ;
typedef  struct TYPE_40__   TYPE_14__ ;
typedef  struct TYPE_39__   TYPE_13__ ;
typedef  struct TYPE_38__   TYPE_12__ ;
typedef  struct TYPE_37__   TYPE_11__ ;
typedef  struct TYPE_36__   TYPE_10__ ;

/* Type definitions */
struct TYPE_49__ {int b_present; scalar_t__ i_event; TYPE_5__* p_current; } ;
typedef  TYPE_7__ vlc_epg_t ;
typedef  int uint16_t ;
struct TYPE_50__ {TYPE_9__* p_ctx; TYPE_1__* handle; } ;
typedef  TYPE_8__ ts_psip_t ;
struct TYPE_51__ {int i_tabletype; scalar_t__ p_a65; TYPE_2__* p_stt; int /*<<< orphan*/  p_mgt; int /*<<< orphan*/  p_vct; } ;
typedef  TYPE_9__ ts_psip_context_t ;
struct TYPE_46__ {int /*<<< orphan*/  i_event_length; int /*<<< orphan*/  i_event_start; } ;
struct TYPE_36__ {TYPE_4__ eit; } ;
typedef  TYPE_10__ ts_pmt_t ;
struct TYPE_48__ {TYPE_8__* p_psip; } ;
struct TYPE_37__ {scalar_t__ type; TYPE_6__ u; } ;
typedef  TYPE_11__ ts_pid_t ;
typedef  int /*<<< orphan*/  ts_pat_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  dvbpsi_atsc_ett_t ;
struct TYPE_38__ {int /*<<< orphan*/  i_version; int /*<<< orphan*/  i_source_id; TYPE_13__* p_first_event; int /*<<< orphan*/  b_current_next; } ;
typedef  TYPE_12__ dvbpsi_atsc_eit_t ;
struct TYPE_39__ {scalar_t__ i_length_seconds; int /*<<< orphan*/  i_event_id; struct TYPE_39__* p_next; } ;
typedef  TYPE_13__ dvbpsi_atsc_eit_event_t ;
struct TYPE_40__ {int /*<<< orphan*/  out; TYPE_15__* p_sys; } ;
typedef  TYPE_14__ demux_t ;
struct TYPE_41__ {int /*<<< orphan*/  pids; } ;
typedef  TYPE_15__ demux_sys_t ;
struct TYPE_47__ {int /*<<< orphan*/  i_duration; int /*<<< orphan*/  i_start; } ;
struct TYPE_45__ {int /*<<< orphan*/ * p_pat; } ;
struct TYPE_44__ {int /*<<< orphan*/  i_gps_utc_offset; int /*<<< orphan*/  i_system_time; } ;
struct TYPE_43__ {scalar_t__ p_sys; } ;
struct TYPE_42__ {TYPE_3__ u; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_14__*,TYPE_9__*,TYPE_13__ const*,int /*<<< orphan*/  const*,TYPE_7__*) ; 
 int /*<<< orphan*/  ATSC_BASE_PID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,TYPE_12__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int const ATSC_TABLE_TYPE_EIT_0 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  ES_OUT_SET_GROUP_EPG ; 
 TYPE_11__* FUNC6 (TYPE_15__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_PSIP ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_14__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC14 (int /*<<< orphan*/ *,int) ; 
 TYPE_19__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*) ; 
 TYPE_7__* FUNC18 (int const,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_7__*,scalar_t__) ; 

__attribute__((used)) static void FUNC20( void *p_pid, dvbpsi_atsc_eit_t* p_eit )
{
    ts_pid_t *p_eit_pid = (ts_pid_t *) p_pid;
    if( FUNC16(p_eit_pid->type != TYPE_PSIP) )
    {
        FUNC7( p_eit_pid->type == TYPE_PSIP );
        FUNC10( p_eit );
        return;
    }

    demux_t *p_demux = (demux_t *) p_eit_pid->u.p_psip->handle->p_sys;
    demux_sys_t *p_sys = p_demux->p_sys;
    ts_pid_t *p_base_pid = FUNC6(p_sys, ATSC_BASE_PID);
    ts_psip_t *p_basepsip = p_base_pid->u.p_psip;
    ts_psip_context_t *p_basectx = p_basepsip->p_ctx;

    if( !p_eit->b_current_next ||
        FUNC16(p_base_pid->type != TYPE_PSIP || !p_basectx->p_stt || !p_basectx->p_vct) )
    {
        FUNC10( p_eit );
        return;
    }

    uint16_t i_program_number;
    if ( !FUNC4( p_basectx->p_vct, p_eit->i_source_id, &i_program_number ) )
    {
        FUNC12( p_demux, "Received EIT for unknown channel %d", p_eit->i_source_id );
        FUNC10( p_eit );
        return;
    }

    const ts_pid_t *pid_sibling_ett = FUNC3( &p_sys->pids, p_basectx->p_mgt,
                                                     p_eit_pid->u.p_psip );

    /* Get System Time for finding and setting current event */
    time_t i_current_time = FUNC8( p_basectx->p_stt->i_system_time,
                                                     p_basectx->p_stt->i_gps_utc_offset );
    FUNC5( i_current_time );

    const uint16_t i_table_type = p_eit_pid->u.p_psip->p_ctx->i_tabletype;
    FUNC7(i_table_type);

    /* Use PID for segmenting our EPG tables updates. 1 EIT/PID transmits 3 hours,
     * with a max of 16 days over 128 EIT/PID. Unlike DVD, table ID is here fixed.
     * see ATSC A/65 5.0 */
    vlc_epg_t *p_epg = FUNC18( i_table_type - ATSC_TABLE_TYPE_EIT_0,
                                    i_program_number );
    if( !p_epg )
    {
        FUNC10( p_eit );
        return;
    }

    /* Use first table as present/following (not split like DVB) */
    p_epg->b_present = (i_table_type == ATSC_TABLE_TYPE_EIT_0);

    if( !p_basectx->p_a65 && !(p_basectx->p_a65 = FUNC9( NULL )) )
        goto end;

    time_t i_current_event_start_time = 0;
    for( const dvbpsi_atsc_eit_event_t *p_evt = p_eit->p_first_event;
                                        p_evt ; p_evt = p_evt->p_next )
    {
        /* Try to match ETT */
        const dvbpsi_atsc_ett_t *p_ett = NULL;
        if( pid_sibling_ett )
            p_ett = FUNC2( pid_sibling_ett->u.p_psip->p_ctx,
                                         FUNC13( p_eit->i_source_id, p_evt->i_event_id ),
                                         p_eit->i_version );

        /* Add Event to EPG based on EIT / available ETT */
        time_t i_start = FUNC0( p_demux, p_basectx, p_evt, p_ett, p_epg );

        /* Try to find current event */
        if( i_start <= i_current_time && i_start + p_evt->i_length_seconds > i_current_time )
            i_current_event_start_time = i_start;
    }

    /* Update epg current time from system time ( required for pruning ) */
    if( p_epg->b_present && i_current_event_start_time )
    {
        FUNC19( p_epg, i_current_event_start_time );
        ts_pat_t *p_pat = FUNC15(&p_sys->pids, 0)->u.p_pat;
        ts_pmt_t *p_pmt = FUNC14(p_pat, i_program_number);
        if(p_pmt)
        {
            p_pmt->eit.i_event_start = p_epg->p_current->i_start;
            p_pmt->eit.i_event_length = p_epg->p_current->i_duration;
        }
    }

    if( p_epg->i_event > 0 )
        FUNC11( p_demux->out, ES_OUT_SET_GROUP_EPG, (int)i_program_number, p_epg );

end:
    FUNC17( p_epg );
    FUNC1( p_eit_pid->u.p_psip->p_ctx, p_eit );
}