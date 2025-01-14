
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {unsigned int i_buffer; scalar_t__* p_buffer; } ;
typedef TYPE_1__ block_t ;


 int memcpy (scalar_t__*,scalar_t__*,unsigned int) ;
 int swab (scalar_t__*,scalar_t__*,unsigned int) ;

__attribute__((used)) static void BdExtract( block_t *p_aout_buffer, block_t *p_block,
                       unsigned i_frame_length,
                       unsigned i_channels, unsigned i_channels_padding,
                       unsigned i_bits )
{
    if( i_bits != 16 || i_channels_padding > 0 )
    {
        uint8_t *p_src = p_block->p_buffer;
        uint8_t *p_dst = p_aout_buffer->p_buffer;
        int dst_inc = ((i_bits == 16) ? 2 : 4) * i_channels;

        while( i_frame_length > 0 )
        {



            if (i_bits == 16) {
                swab( p_src, p_dst, (i_channels + i_channels_padding) * i_bits / 8 );
            } else {
                for (unsigned i = 0; i < i_channels; ++i) {
                    p_dst[i * 4] = 0;
                    p_dst[1 + (i * 4)] = p_src[2 + (i * 3)];
                    p_dst[2 + (i * 4)] = p_src[1 + (i * 3)];
                    p_dst[3 + (i * 4)] = p_src[i * 3];
                }
            }

            p_src += (i_channels + i_channels_padding) * i_bits / 8;
            p_dst += dst_inc;
            i_frame_length--;
        }
    }
    else
    {



        swab( p_block->p_buffer, p_aout_buffer->p_buffer, p_block->i_buffer );

    }
}
