
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_5__ {int * p_mux; } ;
typedef TYPE_2__ sout_stream_sys_t ;
typedef int sout_mux_t ;
typedef int sout_input_t ;
typedef int block_t ;


 int assert (int ) ;
 int sout_MuxSendBuffer (int *,int *,int *) ;

__attribute__((used)) static int MuxSend( sout_stream_t *p_stream, void *id, block_t *p_buffer )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_mux_t *p_mux = p_sys->p_mux;
    assert( p_mux != ((void*)0) );

    return sout_MuxSendBuffer( p_mux, (sout_input_t *)id, p_buffer );
}
