
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__** pp_inputs; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_10__ {int b_header_sent; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_11__ {scalar_t__ p_sys; } ;
typedef TYPE_3__ sout_input_t ;
typedef int mp4_stream_t ;


 int MuxStream (TYPE_1__*,TYPE_3__*,int *) ;
 int VLC_SUCCESS ;
 int WriteSlowStartHeader (TYPE_1__*) ;
 int sout_MuxGetStream (TYPE_1__*,int,int *) ;

__attribute__((used)) static int Mux(sout_mux_t *p_mux)
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    int i_ret = VLC_SUCCESS;

    if(!p_sys->b_header_sent)
    {
        i_ret = WriteSlowStartHeader(p_mux);
        if(i_ret != VLC_SUCCESS)
            return i_ret;
        p_sys->b_header_sent = 1;
    }

    do
    {
        int i_stream = sout_MuxGetStream(p_mux, 2, ((void*)0));
        if (i_stream < 0)
            break;

        sout_input_t *p_input = p_mux->pp_inputs[i_stream];
        mp4_stream_t *p_stream = (mp4_stream_t*)p_input->p_sys;

        i_ret = MuxStream(p_mux, p_input, p_stream);
    } while( i_ret == VLC_SUCCESS );

    return i_ret;
}
