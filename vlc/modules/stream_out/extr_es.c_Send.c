
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_2__ {int p_input; int p_mux; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;
typedef int block_t ;


 int VLC_UNUSED (int *) ;
 int sout_MuxSendBuffer (int ,int ,int *) ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *_id, block_t *p_buffer )
{
    VLC_UNUSED(p_stream);
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    return sout_MuxSendBuffer( id->p_mux, id->p_input, p_buffer );
}
