
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int p_out; int b_spu_enable; } ;
typedef TYPE_2__ demux_sys_t ;


 scalar_t__ BD_EVENT_AUDIO_STREAM ;
 scalar_t__ BD_EVENT_PG_TEXTST_STREAM ;
 int BLURAY_ES_OUT_CONTROL_SET_ES_BY_PID ;
 int BLURAY_ES_OUT_CONTROL_UNSET_ES_BY_PID ;
 int blurayGetStreamPID (TYPE_2__*,scalar_t__,scalar_t__) ;
 int es_out_Control (int ,int ,int,int) ;

__attribute__((used)) static void blurayOnStreamSelectedEvent(demux_t *p_demux, uint32_t i_type, uint32_t i_id)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    int i_pid = -1;


    i_id--;

    if (i_type == BD_EVENT_AUDIO_STREAM) {
        i_pid = blurayGetStreamPID(p_sys, i_type, i_id);
    } else if (i_type == BD_EVENT_PG_TEXTST_STREAM) {
        i_pid = blurayGetStreamPID(p_sys, i_type, i_id);
    }

    if (i_pid > 0)
    {
        if (i_type == BD_EVENT_PG_TEXTST_STREAM && !p_sys->b_spu_enable)
            es_out_Control(p_sys->p_out, BLURAY_ES_OUT_CONTROL_UNSET_ES_BY_PID, (int)i_type, i_pid);
        else
            es_out_Control(p_sys->p_out, BLURAY_ES_OUT_CONTROL_SET_ES_BY_PID, (int)i_type, i_pid);
    }
}
