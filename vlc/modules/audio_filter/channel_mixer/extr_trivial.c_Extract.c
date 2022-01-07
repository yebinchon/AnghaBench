
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int pi_selections ;
struct TYPE_17__ {size_t i_bitspersample; } ;
struct TYPE_14__ {TYPE_8__ audio; } ;
struct TYPE_12__ {int i_channels; } ;
struct TYPE_13__ {TYPE_1__ audio; } ;
struct TYPE_15__ {TYPE_3__ fmt_out; TYPE_2__ fmt_in; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_16__ {size_t i_nb_samples; int p_buffer; int i_length; int i_pts; int i_dts; } ;
typedef TYPE_5__ block_t ;


 int AOUT_CHAN_MAX ;
 int aout_ChannelExtract (int ,size_t,int ,int ,size_t,int const*,size_t) ;
 size_t aout_FormatNbChannels (TYPE_8__*) ;
 TYPE_5__* block_Alloc (size_t) ;
 int block_Release (TYPE_5__*) ;
 int static_assert (int,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static block_t *Extract( filter_t *p_filter, block_t *p_in_buf )
{
    size_t i_out_channels = aout_FormatNbChannels( &p_filter->fmt_out.audio );
    size_t i_out_size = p_in_buf->i_nb_samples
                      * p_filter->fmt_out.audio.i_bitspersample
                      * i_out_channels / 8;

    block_t *p_out_buf = block_Alloc( i_out_size );
    if( unlikely(p_out_buf == ((void*)0)) )
    {
        block_Release( p_in_buf );
        return ((void*)0);
    }

    p_out_buf->i_nb_samples = p_in_buf->i_nb_samples;
    p_out_buf->i_dts = p_in_buf->i_dts;
    p_out_buf->i_pts = p_in_buf->i_pts;
    p_out_buf->i_length = p_in_buf->i_length;

    static const int pi_selections[] = {
        0, 1, 2, 3, 4, 5, 6, 7, 8,
    };
    static_assert(sizeof(pi_selections)/sizeof(int) == AOUT_CHAN_MAX,
                  "channel max size mismatch!");

    aout_ChannelExtract( p_out_buf->p_buffer, i_out_channels,
                         p_in_buf->p_buffer, p_filter->fmt_in.audio.i_channels,
                         p_in_buf->i_nb_samples, pi_selections,
                         p_filter->fmt_out.audio.i_bitspersample );

    block_Release( p_in_buf );
    return p_out_buf;
}
