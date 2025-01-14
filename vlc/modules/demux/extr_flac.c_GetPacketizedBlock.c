
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct flac_stream_info {int dummy; } ;
struct flac_header_info {int i_pts; } ;
struct TYPE_9__ {TYPE_2__* (* pf_packetize ) (TYPE_1__*,TYPE_2__**) ;} ;
typedef TYPE_1__ decoder_t ;
struct TYPE_10__ {scalar_t__ i_buffer; int i_pts; int i_dts; int p_buffer; } ;
typedef TYPE_2__ block_t ;


 scalar_t__ FLAC_HEADER_SIZE_MAX ;
 int FLAC_ParseSyncInfo (int ,struct flac_stream_info const*,int *,struct flac_header_info*) ;
 int assert (int) ;
 TYPE_2__* stub1 (TYPE_1__*,TYPE_2__**) ;

__attribute__((used)) static block_t *GetPacketizedBlock( decoder_t *p_packetizer,
                                    const struct flac_stream_info *streaminfo,
                                    block_t **pp_current_block )
{
    block_t *p_block = p_packetizer->pf_packetize( p_packetizer, pp_current_block );
    if( p_block )
    {
        if( p_block->i_buffer >= FLAC_HEADER_SIZE_MAX )
        {
            struct flac_header_info headerinfo;
            int i_ret = FLAC_ParseSyncInfo( p_block->p_buffer, streaminfo, ((void*)0), &headerinfo );
            assert( i_ret != 0 );

            p_block->i_dts = p_block->i_pts = headerinfo.i_pts;
        }
    }
    return p_block;
}
