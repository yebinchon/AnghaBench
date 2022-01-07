
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int i_bitspersample; int i_channels; int i_physical_channels; } ;
struct TYPE_13__ {TYPE_1__ audio; int i_codec; } ;
struct TYPE_14__ {TYPE_2__ fmt_out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_15__ {int end_date; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_16__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_5__ block_t ;


 scalar_t__ AES3_HEADER_LEN ;
 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int Flush (TYPE_3__*) ;
 int GetDWBE (int ) ;
 int VLC_CODEC_S16N ;
 int VLC_CODEC_S32N ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_5__*) ;
 scalar_t__ date_Get (int *) ;
 int date_Set (int *,scalar_t__) ;
 int msg_Err (TYPE_3__*,char*) ;
 int * pi_original_channels ;

__attribute__((used)) static block_t * Parse( decoder_t *p_dec, int *pi_frame_length, int *pi_bits,
                        block_t *p_block, bool b_packetizer )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint32_t h;
    unsigned int i_size;
    int i_channels;
    int i_bits;

    if( !p_block )
        return ((void*)0);

    if( p_block->i_flags & (BLOCK_FLAG_CORRUPTED|BLOCK_FLAG_DISCONTINUITY) )
    {
        Flush( p_dec );
        if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
        {
            block_Release( p_block );
            return ((void*)0);
        }
    }


    if( p_block->i_pts != VLC_TICK_INVALID &&
        p_block->i_pts != date_Get( &p_sys->end_date ) )
    {
        date_Set( &p_sys->end_date, p_block->i_pts );
    }

    if( date_Get( &p_sys->end_date ) == VLC_TICK_INVALID )
    {

        block_Release( p_block );
        return ((void*)0);
    }

    if( p_block->i_buffer <= AES3_HEADER_LEN )
    {
        msg_Err(p_dec, "frame is too short");
        block_Release( p_block );
        return ((void*)0);
    }
    h = GetDWBE( p_block->p_buffer );
    i_size = (h >> 16) & 0xffff;
    i_channels = 2 + 2*( (h >> 14) & 0x03 );
    i_bits = 16 + 4*( (h >> 4)&0x03 );

    if( AES3_HEADER_LEN + i_size != p_block->i_buffer || i_bits > 24 )
    {
        msg_Err(p_dec, "frame has invalid header");
        block_Release( p_block );
        return ((void*)0);
    }


    if( b_packetizer )
    {
        p_dec->fmt_out.audio.i_bitspersample = i_bits;
    }
    else
    {
        p_dec->fmt_out.i_codec = i_bits == 16 ? VLC_CODEC_S16N : VLC_CODEC_S32N;
        p_dec->fmt_out.audio.i_bitspersample = i_bits == 16 ? 16 : 32;
    }

    p_dec->fmt_out.audio.i_channels = i_channels;
    p_dec->fmt_out.audio.i_physical_channels = pi_original_channels[i_channels/2-1];

    *pi_frame_length = (p_block->i_buffer - AES3_HEADER_LEN) / ( (4+i_bits) * i_channels / 8 );
    *pi_bits = i_bits;
    return p_block;
}
