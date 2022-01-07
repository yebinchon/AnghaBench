
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int i_frame_length; int i_bytes_per_frame; } ;
struct TYPE_8__ {TYPE_2__ audio; } ;
struct TYPE_10__ {TYPE_1__ fmt_out; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_11__ {int i_nb_samples; scalar_t__ i_length; scalar_t__ i_pts; } ;
typedef TYPE_4__ block_t ;


 int assert (int) ;
 TYPE_4__* block_Alloc (size_t) ;
 scalar_t__ likely (int ) ;

block_t *decoder_NewAudioBuffer( decoder_t *dec, int samples )
{
    assert( dec->fmt_out.audio.i_frame_length > 0
         && dec->fmt_out.audio.i_bytes_per_frame > 0 );

    size_t length = samples * dec->fmt_out.audio.i_bytes_per_frame
                            / dec->fmt_out.audio.i_frame_length;
    block_t *block = block_Alloc( length );
    if( likely(block != ((void*)0)) )
    {
        block->i_nb_samples = samples;
        block->i_pts = block->i_length = 0;
    }
    return block;
}
