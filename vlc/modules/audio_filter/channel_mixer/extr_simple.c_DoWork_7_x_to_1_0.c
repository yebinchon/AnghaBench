
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int i_physical_channels; } ;
struct TYPE_9__ {TYPE_1__ audio; } ;
struct TYPE_10__ {TYPE_2__ fmt_in; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_11__ {int i_nb_samples; scalar_t__ p_buffer; } ;
typedef TYPE_4__ block_t ;


 int AOUT_CHAN_LFE ;

__attribute__((used)) static void DoWork_7_x_to_1_0( filter_t * p_filter, block_t * p_in_buf, block_t * p_out_buf ) {
    float *p_dest = (float *)p_out_buf->p_buffer;
    const float *p_src = (const float *)p_in_buf->p_buffer;
    for( int i = p_in_buf->i_nb_samples; i--; )
    {
        *p_dest++ = p_src[6] + p_src[0] / 4 + p_src[1] / 4 + p_src[2] / 8 + p_src[3] / 8 + p_src[4] / 8 + p_src[5] / 8;

        p_src += 7;

        if( p_filter->fmt_in.audio.i_physical_channels & AOUT_CHAN_LFE ) p_src++;
    }
}
