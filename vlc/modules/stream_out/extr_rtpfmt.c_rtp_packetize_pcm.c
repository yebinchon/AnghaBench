
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int sout_stream_id_sys_t ;
struct TYPE_8__ {unsigned int i_buffer; unsigned int i_length; int i_flags; unsigned int i_pts; unsigned int p_buffer; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int VLC_ENOMEM ;
 TYPE_1__* block_Alloc (int) ;
 int block_Release (TYPE_1__*) ;
 int memcpy (unsigned int,unsigned int,unsigned int) ;
 unsigned int rtp_mtu (int *) ;
 int rtp_packetize_common (int *,TYPE_1__*,int,unsigned int) ;
 int rtp_packetize_send (int *,TYPE_1__*) ;
 int rtp_packetize_simple (int *,TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int rtp_packetize_pcm(sout_stream_id_sys_t *id, block_t *in)
{
    unsigned max = rtp_mtu(id);

    while (in->i_buffer > max)
    {
        unsigned duration = (in->i_length * max) / in->i_buffer;
        bool marker = (in->i_flags & BLOCK_FLAG_DISCONTINUITY) != 0;

        block_t *out = block_Alloc(12 + max);
        if (unlikely(out == ((void*)0)))
        {
            block_Release(in);
            return VLC_ENOMEM;
        }

        rtp_packetize_common(id, out, marker, in->i_pts);
        memcpy(out->p_buffer + 12, in->p_buffer, max);
        rtp_packetize_send(id, out);

        in->p_buffer += max;
        in->i_buffer -= max;
        in->i_pts += duration;
        in->i_length -= duration;
        in->i_flags &= ~BLOCK_FLAG_DISCONTINUITY;
    }

    return rtp_packetize_simple(id, in);
}
