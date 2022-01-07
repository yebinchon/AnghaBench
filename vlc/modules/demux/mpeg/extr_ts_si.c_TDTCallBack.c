
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* p_si; } ;
struct TYPE_15__ {TYPE_3__ u; } ;
typedef TYPE_4__ ts_pid_t ;
typedef int int64_t ;
struct TYPE_16__ {int i_utc_time; } ;
typedef TYPE_5__ dvbpsi_tot_t ;
struct TYPE_17__ {int out; TYPE_7__* p_sys; } ;
typedef TYPE_6__ demux_t ;
struct TYPE_18__ {scalar_t__ standard; scalar_t__ i_network_time; int pids; int i_network_time_update; } ;
typedef TYPE_7__ demux_sys_t ;
struct TYPE_13__ {TYPE_1__* handle; } ;
struct TYPE_12__ {int p_decoder; } ;


 scalar_t__ EITConvertStartTime (int ) ;
 int ES_OUT_SET_EPG_TIME ;
 int TS_SI_TDT_PID ;
 scalar_t__ TS_STANDARD_ARIB ;
 int dvbpsi_decoder_reset (int ,int) ;
 int dvbpsi_tot_delete (TYPE_5__*) ;
 int es_out_Control (int ,int ,int ) ;
 int time (int *) ;
 TYPE_4__* ts_pid_Get (int *,int ) ;

__attribute__((used)) static void TDTCallBack( demux_t *p_demux, dvbpsi_tot_t *p_tdt )
{
    demux_sys_t *p_sys = p_demux->p_sys;


    p_sys->i_network_time = EITConvertStartTime( p_tdt->i_utc_time );
    p_sys->i_network_time_update = time(((void*)0));
    if( p_sys->standard == TS_STANDARD_ARIB )
    {





        p_sys->i_network_time += 9 * 3600;
    }



    ts_pid_t *pid = ts_pid_Get( &p_sys->pids, TS_SI_TDT_PID );
    dvbpsi_decoder_reset( pid->u.p_si->handle->p_decoder, 1 );
    dvbpsi_tot_delete(p_tdt);

    es_out_Control( p_demux->out, ES_OUT_SET_EPG_TIME, (int64_t) p_sys->i_network_time );
}
