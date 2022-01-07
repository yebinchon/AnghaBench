
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int int16_t ;
struct TYPE_21__ {int i_rate; } ;
struct TYPE_22__ {TYPE_3__ audio; } ;
struct TYPE_19__ {int i_channels; } ;
struct TYPE_20__ {int i_codec; TYPE_1__ audio; } ;
struct TYPE_23__ {TYPE_4__ fmt_out; TYPE_2__ fmt_in; TYPE_6__* p_sys; } ;
typedef TYPE_5__ encoder_t ;
struct TYPE_24__ {size_t samples_per_frame; int s; } ;
typedef TYPE_6__ encoder_sys_t ;
struct TYPE_25__ {int i_buffer; unsigned int i_nb_samples; int i_pts; int i_dts; scalar_t__ i_length; int p_buffer; } ;
typedef TYPE_7__ block_t ;


 TYPE_7__* GetPCM (TYPE_5__*,TYPE_7__*) ;
 int SHINE_MAX_SAMPLES ;
 int VLC_UNUSED (TYPE_5__*) ;
 int aout_Deinterleave (int *,int ,size_t,int ,int ) ;
 TYPE_7__* block_Alloc (int) ;
 int block_ChainAppend (TYPE_7__**,TYPE_7__*) ;
 int block_Release (TYPE_7__*) ;
 int memcpy (int ,unsigned char*,int) ;
 unsigned char* shine_encode_buffer (int ,int **,int*) ;
 scalar_t__ vlc_tick_from_samples (unsigned int,int ) ;

__attribute__((used)) static block_t *EncodeFrame( encoder_t *p_enc, block_t *p_block )
{
    if (!p_block)
        return ((void*)0);

    encoder_sys_t *p_sys = p_enc->p_sys;
    block_t *p_pcm_block;
    block_t *p_chain = ((void*)0);
    unsigned int i_samples = p_block->i_buffer >> 2 ;
    vlc_tick_t start_date = p_block->i_pts;
    start_date -= vlc_tick_from_samples(i_samples, p_enc->fmt_out.audio.i_rate);

    VLC_UNUSED(p_enc);

    do {
        p_pcm_block = GetPCM( p_enc, p_block );
        if( !p_pcm_block )
            break;

        p_block = ((void*)0);
        int16_t pcm_planar_buf[SHINE_MAX_SAMPLES * 2];
        int16_t *pcm_planar_buf_chans[2] = {
            &pcm_planar_buf[0],
            &pcm_planar_buf[p_sys->samples_per_frame],
        };
        aout_Deinterleave( pcm_planar_buf, p_pcm_block->p_buffer,
                p_sys->samples_per_frame, p_enc->fmt_in.audio.i_channels, p_enc->fmt_in.i_codec);

        int written;
        unsigned char *buf = shine_encode_buffer(p_sys->s, pcm_planar_buf_chans, &written);
        block_Release( p_pcm_block );

        if (written <= 0)
            break;

        block_t *p_mp3_block = block_Alloc( written );
        if( !p_mp3_block )
            break;

        memcpy( p_mp3_block->p_buffer, buf, written );


        p_mp3_block->i_length = vlc_tick_from_samples(p_sys->samples_per_frame,
            p_enc->fmt_out.audio.i_rate);

        start_date += p_mp3_block->i_length;
        p_mp3_block->i_dts = p_mp3_block->i_pts = start_date;

        p_mp3_block->i_nb_samples = p_sys->samples_per_frame;

        block_ChainAppend( &p_chain, p_mp3_block );

    } while( p_pcm_block );

    return p_chain;
}
