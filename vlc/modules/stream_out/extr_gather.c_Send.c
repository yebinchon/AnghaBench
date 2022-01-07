
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_next; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_8__ {int b_streamswap; int id; } ;
typedef TYPE_2__ sout_stream_id_sys_t ;
struct TYPE_9__ {int i_flags; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int sout_StreamIdSend (int ,int ,TYPE_3__*) ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *_id, block_t *p_buffer )
{
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    if ( id->b_streamswap )
    {
        id->b_streamswap = 0;
        p_buffer->i_flags |= BLOCK_FLAG_DISCONTINUITY;
    }
    return sout_StreamIdSend( p_stream->p_next, id->id, p_buffer );
}
