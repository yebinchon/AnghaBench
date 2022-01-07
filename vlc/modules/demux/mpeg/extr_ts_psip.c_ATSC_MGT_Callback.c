
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_24__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_17__ ;


typedef int uint8_t ;
struct TYPE_29__ {int i_size; TYPE_17__** p_elems; } ;
struct TYPE_32__ {int i_version; TYPE_9__* handle; TYPE_24__ eit; TYPE_2__* p_ctx; } ;
typedef TYPE_4__ ts_psip_t ;
struct TYPE_31__ {TYPE_4__* p_psip; TYPE_1__* p_pat; } ;
struct TYPE_33__ {scalar_t__ type; scalar_t__ i_pid; TYPE_3__ u; } ;
typedef TYPE_5__ ts_pid_t ;
typedef int dvbpsi_demux_t ;
typedef int dvbpsi_demux_subdec_t ;
struct TYPE_34__ {scalar_t__ i_table_type; scalar_t__ i_table_type_pid; struct TYPE_34__* p_next; } ;
typedef TYPE_6__ dvbpsi_atsc_mgt_table_t ;
struct TYPE_35__ {int i_version; scalar_t__ b_current_next; TYPE_6__* p_first_table; } ;
typedef TYPE_7__ dvbpsi_atsc_mgt_t ;
struct TYPE_36__ {int * p_sys; } ;
typedef TYPE_8__ demux_t ;
typedef int demux_sys_t ;
struct TYPE_37__ {scalar_t__ p_decoder; scalar_t__ p_sys; } ;
struct TYPE_30__ {scalar_t__ i_tabletype; TYPE_7__* p_mgt; int * p_vct; } ;
struct TYPE_28__ {int i_ts_id; } ;
struct TYPE_27__ {scalar_t__ type; } ;


 int ARRAY_APPEND (TYPE_24__,TYPE_5__*) ;
 int ARRAY_RESET (TYPE_24__) ;
 int ATSC_ATTACH (TYPE_9__*,int ,int const,int ,TYPE_5__*) ;
 scalar_t__ ATSC_BASE_PID ;
 int ATSC_CVCT_TABLE_ID ;
 scalar_t__ ATSC_EIT_MAX_DEPTH_MIN1 ;
 int ATSC_Ready_SubDecoders (TYPE_9__*,TYPE_5__*) ;
 scalar_t__ ATSC_TABLE_TYPE_CVCT ;
 scalar_t__ ATSC_TABLE_TYPE_EIT_0 ;
 scalar_t__ ATSC_TABLE_TYPE_EIT_127 ;
 scalar_t__ ATSC_TABLE_TYPE_ETT_0 ;
 scalar_t__ ATSC_TABLE_TYPE_ETT_127 ;
 scalar_t__ ATSC_TABLE_TYPE_TVCT ;
 int ATSC_TVCT_TABLE_ID ;
 TYPE_5__* GetPID (int *,scalar_t__) ;
 int PIDRelease (TYPE_8__*,TYPE_17__*) ;
 scalar_t__ PIDSetup (TYPE_8__*,scalar_t__,TYPE_5__*,int *) ;
 scalar_t__ SCTE18_SI_BASE_PID ;
 int SCTE18_Section_Callback ;
 int SCTE18_TABLE_ID ;
 int SetPIDFilter (int *,TYPE_5__*,int) ;
 scalar_t__ TYPE_FREE ;
 scalar_t__ TYPE_PSIP ;
 int VCT ;
 int assert (int) ;
 int dvbpsi_DeleteDemuxSubDecoder (int *) ;
 int dvbpsi_DetachDemuxSubDecoder (int *,int *) ;
 int dvbpsi_atsc_DeleteMGT (TYPE_7__*) ;
 int dvbpsi_atsc_DeleteVCT (int *) ;
 int * dvbpsi_demuxGetSubDec (int *,int ,int) ;
 int msg_Dbg (TYPE_8__*,char*,scalar_t__,...) ;
 scalar_t__ ts_dvbpsi_AttachRawSubDecoder (TYPE_9__*,int ,int,int ,TYPE_5__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ATSC_MGT_Callback( void *p_cb_basepid, dvbpsi_atsc_mgt_t* p_mgt )
{
    ts_pid_t *p_base_pid = (ts_pid_t *) p_cb_basepid;
    if( unlikely(p_base_pid->type != TYPE_PSIP || p_base_pid->i_pid != ATSC_BASE_PID) )
    {
        assert( p_base_pid->type == TYPE_PSIP );
        assert( p_base_pid->i_pid == ATSC_BASE_PID );
        dvbpsi_atsc_DeleteMGT( p_mgt );
        return;
    }
    ts_psip_t *p_mgtpsip = p_base_pid->u.p_psip;
    demux_t *p_demux = (demux_t *) p_mgtpsip->handle->p_sys;
    demux_sys_t *p_sys = p_demux->p_sys;

    if( ( p_mgtpsip->i_version != -1 && p_mgtpsip->i_version == p_mgt->i_version ) ||
          p_mgt->b_current_next == 0 )
    {
        dvbpsi_atsc_DeleteMGT( p_mgt );
        return;
    }



    if( p_mgtpsip->i_version != -1 )
    {
        if( p_mgtpsip->p_ctx->p_vct )
        {
            dvbpsi_atsc_DeleteVCT( p_mgtpsip->p_ctx->p_vct );
            p_mgtpsip->p_ctx->p_vct = ((void*)0);
        }


        for( int i=0; i < p_mgtpsip->eit.i_size; i++ )
        {
             PIDRelease( p_demux, p_mgtpsip->eit.p_elems[i] );
             assert( p_mgtpsip->eit.p_elems[i]->type == TYPE_FREE );
        }
        ARRAY_RESET(p_mgtpsip->eit);


        dvbpsi_demux_t *p_dvbpsi_demux = (dvbpsi_demux_t *) p_mgtpsip->handle->p_decoder;
        dvbpsi_demux_subdec_t *p_subdec = dvbpsi_demuxGetSubDec( p_dvbpsi_demux, SCTE18_TABLE_ID, 0x00 );
        if( p_subdec )
        {
            dvbpsi_DetachDemuxSubDecoder( p_dvbpsi_demux, p_subdec );
            dvbpsi_DeleteDemuxSubDecoder( p_subdec );
        }
    }

    if( p_mgtpsip->p_ctx->p_mgt )
        dvbpsi_atsc_DeleteMGT( p_mgtpsip->p_ctx->p_mgt );
    p_mgtpsip->p_ctx->p_mgt = p_mgt;
    p_mgtpsip->i_version = p_mgt->i_version;

    for( const dvbpsi_atsc_mgt_table_t *p_tab = p_mgt->p_first_table;
                                        p_tab; p_tab = p_tab->p_next )
    {
        if( p_tab->i_table_type == ATSC_TABLE_TYPE_TVCT ||
            p_tab->i_table_type == ATSC_TABLE_TYPE_CVCT )
        {
            const uint8_t i_table_id = (p_tab->i_table_type == ATSC_TABLE_TYPE_CVCT)
                                     ? ATSC_CVCT_TABLE_ID
                                     : ATSC_TVCT_TABLE_ID;
            if( !ATSC_ATTACH( p_mgtpsip->handle, VCT, i_table_id,
                              GetPID(p_sys, 0)->u.p_pat->i_ts_id, p_base_pid ) )
                msg_Dbg( p_demux, "  * pid=%d listening for ATSC VCT", p_base_pid->i_pid );
        }
        else if( p_tab->i_table_type >= ATSC_TABLE_TYPE_EIT_0 &&
                 p_tab->i_table_type <= ATSC_TABLE_TYPE_EIT_0 + ATSC_EIT_MAX_DEPTH_MIN1 &&
                 p_tab->i_table_type <= ATSC_TABLE_TYPE_EIT_127 &&
                 p_tab->i_table_type_pid != p_base_pid->i_pid )
        {
            ts_pid_t *pid = GetPID(p_sys, p_tab->i_table_type_pid);
            if( PIDSetup( p_demux, TYPE_PSIP, pid, ((void*)0) ) )
            {
                SetPIDFilter( p_demux->p_sys, pid, 1 );
                pid->u.p_psip->p_ctx->i_tabletype = p_tab->i_table_type;
                ATSC_Ready_SubDecoders( pid->u.p_psip->handle, pid );
                msg_Dbg( p_demux, "  * pid=%d reserved for ATSC EIT", pid->i_pid );
                ARRAY_APPEND( p_mgtpsip->eit, pid );
            }
        }
        else if( p_tab->i_table_type >= ATSC_TABLE_TYPE_ETT_0 &&
                 p_tab->i_table_type <= ATSC_TABLE_TYPE_ETT_0 + ATSC_EIT_MAX_DEPTH_MIN1 &&
                 p_tab->i_table_type <= ATSC_TABLE_TYPE_ETT_127 &&
                 p_tab->i_table_type_pid != p_base_pid->i_pid )
        {
            ts_pid_t *pid = GetPID(p_sys, p_tab->i_table_type_pid);
            if( PIDSetup( p_demux, TYPE_PSIP, pid, ((void*)0) ) )
            {
                SetPIDFilter( p_sys, pid, 1 );
                pid->u.p_psip->p_ctx->i_tabletype = p_tab->i_table_type;
                ATSC_Ready_SubDecoders( pid->u.p_psip->handle, pid );
                msg_Dbg( p_demux, "  * pid=%d reserved for ATSC ETT", pid->i_pid );
                ARRAY_APPEND( p_mgtpsip->eit, pid );
            }
        }
        msg_Dbg( p_demux, "  * pid=%d transport for ATSC PSIP type %x",
                          p_tab->i_table_type_pid, p_tab->i_table_type );
    }

    if( SCTE18_SI_BASE_PID == ATSC_BASE_PID &&
        ts_dvbpsi_AttachRawSubDecoder( p_mgtpsip->handle, SCTE18_TABLE_ID, 0x00,
                                       SCTE18_Section_Callback, p_base_pid ) )
    {
        msg_Dbg( p_demux, "  * pid=%d listening for EAS", p_base_pid->i_pid );
    }
}
