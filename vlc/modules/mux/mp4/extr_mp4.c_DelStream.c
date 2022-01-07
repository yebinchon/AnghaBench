
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_14__ {int i_start_dts; int muxh; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_15__ {int p_fifo; scalar_t__ p_sys; } ;
typedef TYPE_3__ sout_input_t ;
struct TYPE_16__ {int tinfo; } ;
typedef TYPE_4__ mp4_stream_t ;


 scalar_t__ CreateCurrentEdit (TYPE_4__*,int ,int) ;
 int FRAGMENTED ;
 scalar_t__ MuxStream (TYPE_1__*,TYPE_3__*,TYPE_4__*) ;
 int VLC_OBJECT (TYPE_1__*) ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ block_FifoCount (int ) ;
 int mp4mux_Is (int ,int ) ;
 int mp4mux_track_DebugEdits (int ,int ) ;
 int msg_Dbg (TYPE_1__*,char*) ;

__attribute__((used)) static void DelStream(sout_mux_t *p_mux, sout_input_t *p_input)
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    mp4_stream_t *p_stream = (mp4_stream_t*)p_input->p_sys;

    if(!mp4mux_Is(p_sys->muxh, FRAGMENTED))
    {
        while(block_FifoCount(p_input->p_fifo) > 0 &&
              MuxStream(p_mux, p_input, p_stream) == VLC_SUCCESS) {};

        if(CreateCurrentEdit(p_stream, p_sys->i_start_dts, 0))
            mp4mux_track_DebugEdits(VLC_OBJECT(p_mux), p_stream->tinfo);
    }

    msg_Dbg(p_mux, "removing input");
}
