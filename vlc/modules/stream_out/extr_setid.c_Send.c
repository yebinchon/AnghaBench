
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_next; } ;
typedef TYPE_1__ sout_stream_t ;
typedef int block_t ;


 int sout_StreamIdSend (int ,void*,int *) ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *id, block_t *p_buffer )
{
    return sout_StreamIdSend( p_stream->p_next, id, p_buffer );
}
