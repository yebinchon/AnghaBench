
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_8__ {scalar_t__ i_delay; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef int decoder_t ;
struct TYPE_9__ {scalar_t__ i_buffer; scalar_t__ i_dts; scalar_t__ i_pts; struct TYPE_9__* p_next; } ;
typedef TYPE_3__ block_t ;


 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int input_DecoderDecode (int *,TYPE_3__*,int) ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *id, block_t *p_buffer )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    while( p_buffer )
    {
        block_t *p_next = p_buffer->p_next;

        p_buffer->p_next = ((void*)0);

        if( id != ((void*)0) && p_buffer->i_buffer > 0 )
        {
            if( p_buffer->i_dts == VLC_TICK_INVALID )
                p_buffer->i_dts = 0;
            else
                p_buffer->i_dts += p_sys->i_delay;

            if( p_buffer->i_pts == VLC_TICK_INVALID )
                p_buffer->i_pts = 0;
            else
                p_buffer->i_pts += p_sys->i_delay;

            input_DecoderDecode( (decoder_t *)id, p_buffer, 0 );
        }

        p_buffer = p_next;
    }

    return VLC_SUCCESS;
}
