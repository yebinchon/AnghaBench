
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ p_sys; } ;
typedef TYPE_2__ sout_stream_t ;
struct TYPE_13__ {int * p_mux; } ;
typedef TYPE_3__ sout_stream_sys_t ;
struct TYPE_11__ {scalar_t__ (* pf_packetize ) (TYPE_4__*,TYPE_5__*) ;int fmtp; int ptname; } ;
struct TYPE_14__ {int b_first_packet; TYPE_1__ rtp_fmt; } ;
typedef TYPE_4__ sout_stream_id_sys_t ;
struct TYPE_15__ {int i_pts; struct TYPE_15__* p_next; } ;
typedef TYPE_5__ block_t ;


 int VLC_SUCCESS ;
 int assert (int ) ;
 int rtp_packetize_xiph_config (TYPE_4__*,int ,int ) ;
 int strcmp (int ,char*) ;
 scalar_t__ stub1 (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static int Send( sout_stream_t *p_stream, void *_id, block_t *p_buffer )
{
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;
    assert( ((sout_stream_sys_t *)p_stream->p_sys)->p_mux == ((void*)0) );

    while( p_buffer != ((void*)0) )
    {
        block_t *p_next = p_buffer->p_next;
        p_buffer->p_next = ((void*)0);



        if (id->b_first_packet)
        {
            id->b_first_packet = 0;
            if (!strcmp(id->rtp_fmt.ptname, "vorbis") ||
                !strcmp(id->rtp_fmt.ptname, "theora"))
                rtp_packetize_xiph_config(id, id->rtp_fmt.fmtp,
                                          p_buffer->i_pts);
        }

        if( id->rtp_fmt.pf_packetize( id, p_buffer ) )
            break;

        p_buffer = p_next;
    }
    return VLC_SUCCESS;
}
