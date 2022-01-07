
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ i_cat; int i_codec; scalar_t__ i_original_fourcc; } ;
struct TYPE_14__ {TYPE_1__ fmt; } ;
typedef TYPE_2__ mp4_track_t ;
typedef int demux_t ;
struct TYPE_15__ {int i_buffer; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ ATOM_rrtp ;
 TYPE_3__* AV1_Unpack_Sample (TYPE_3__*) ;
 TYPE_3__* MP4_EIA608_Convert (TYPE_3__*) ;
 TYPE_3__* MP4_RTPHint_Convert (int *,TYPE_3__*,int) ;
 scalar_t__ SPU_ES ;
 int VLC_CODEC_AV1 ;
__attribute__((used)) static block_t * MP4_Block_Convert( demux_t *p_demux, const mp4_track_t *p_track, block_t *p_block )
{

    if( p_track->fmt.i_cat == SPU_ES )
    {
        switch( p_track->fmt.i_codec )
        {
            case 128:
            case 130:
            case 133:
            case 129:
            case 132:
            case 131:

            break;
            case 135:
            case 134:
                p_block = MP4_EIA608_Convert( p_block );
            break;
        default:
            p_block->i_buffer = 0;
            break;
        }
    }
    else if( p_track->fmt.i_codec == VLC_CODEC_AV1 )
    {
        p_block = AV1_Unpack_Sample( p_block );
    }
    else if( p_track->fmt.i_original_fourcc == ATOM_rrtp )
    {
        p_block = MP4_RTPHint_Convert( p_demux, p_block, p_track->fmt.i_codec );
    }

    return p_block;
}
