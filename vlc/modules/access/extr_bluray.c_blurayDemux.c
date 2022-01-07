
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_17__ {int i_size; TYPE_5__* p_elems; } ;
struct TYPE_19__ {int b_draining; int b_menu; int b_flushed; int p_parser; scalar_t__ b_fatal_error; TYPE_1__ events_delayed; int bluray; int p_out; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_20__ {int i_buffer; int p_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_21__ {scalar_t__ event; } ;
typedef TYPE_5__ BD_EVENT ;


 scalar_t__ BD_EVENT_NONE ;
 int BD_READ_SIZE ;
 int ES_OUT_GET_EMPTY ;
 int ES_OUT_RESET_PCR ;
 int VLC_DEMUXER_EGENERIC ;
 int VLC_DEMUXER_EOF ;
 int VLC_DEMUXER_SUCCESS ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_TICK_FROM_MS (int) ;
 scalar_t__ bd_get_event (int ,TYPE_5__*) ;
 int bd_read (int ,int ,int ) ;
 int bd_read_ext (int ,int ,int ,TYPE_5__*) ;
 TYPE_4__* block_Alloc (int ) ;
 int block_Release (TYPE_4__*) ;
 int blurayHandleEvent (TYPE_2__*,TYPE_5__*,int) ;
 int blurayHandleOverlays (TYPE_2__*) ;
 scalar_t__ es_out_Control (int ,int ,...) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Err (TYPE_2__*,char*) ;
 int vlc_demux_chained_Send (int ,TYPE_4__*) ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static int blurayDemux(demux_t *p_demux)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    BD_EVENT e;

    if(p_sys->b_draining)
    {
        bool b_empty = 0;
        if(es_out_Control(p_sys->p_out, ES_OUT_GET_EMPTY, &b_empty) != VLC_SUCCESS || b_empty)
        {
            es_out_Control(p_sys->p_out, ES_OUT_RESET_PCR);
            p_sys->b_draining = 0;
        }
        else
        {
            msg_Dbg(p_demux, "Draining...");
            vlc_tick_sleep(VLC_TICK_FROM_MS(40));
            return VLC_DEMUXER_SUCCESS;
        }
    }

    block_t *p_block = block_Alloc(BD_READ_SIZE);
    if (!p_block)
        return VLC_DEMUXER_EGENERIC;

    int nread;

    if (p_sys->b_menu == 0) {
        nread = bd_read(p_sys->bluray, p_block->p_buffer, BD_READ_SIZE);
        while (bd_get_event(p_sys->bluray, &e))
            blurayHandleEvent(p_demux, &e, 0);
    } else {
        nread = bd_read_ext(p_sys->bluray, p_block->p_buffer, BD_READ_SIZE, &e);
        while (e.event != BD_EVENT_NONE) {
            blurayHandleEvent(p_demux, &e, 0);
            bd_get_event(p_sys->bluray, &e);
        }
    }


    for(int i=0; i<p_sys->events_delayed.i_size; i++)
        blurayHandleEvent(p_demux, &p_sys->events_delayed.p_elems[i], 1);
    p_sys->events_delayed.i_size = 0;

    blurayHandleOverlays(p_demux);

    if (nread <= 0) {
        block_Release(p_block);
        if (p_sys->b_fatal_error || nread < 0) {
            msg_Err(p_demux, "bluray: stopping playback after fatal error\n");
            return VLC_DEMUXER_EGENERIC;
        }
        if (!p_sys->b_menu) {
            return VLC_DEMUXER_EOF;
        }
        return VLC_DEMUXER_SUCCESS;
    }

    p_block->i_buffer = nread;

    vlc_demux_chained_Send(p_sys->p_parser, p_block);

    p_sys->b_flushed = 0;

    return VLC_DEMUXER_SUCCESS;
}
