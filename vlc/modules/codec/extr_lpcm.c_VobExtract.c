
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* p_buffer; int i_buffer; } ;
typedef TYPE_1__ block_t ;


 int assert (int) ;
 int memcpy (int*,int*,int) ;
 int swab (int*,int*,int) ;

__attribute__((used)) static void VobExtract( block_t *p_aout_buffer, block_t *p_block,
                        unsigned i_bits )
{

    if( i_bits == 24 )
    {
        uint32_t *p_out = (uint32_t *)p_aout_buffer->p_buffer;

        while( p_block->i_buffer / 12 )
        {

            *(p_out++) = (p_block->p_buffer[ 0] << 24)
                       | (p_block->p_buffer[ 1] << 16)
                       | (p_block->p_buffer[ 8] << 8);

            *(p_out++) = (p_block->p_buffer[ 2] << 24)
                       | (p_block->p_buffer[ 3] << 16)
                       | (p_block->p_buffer[ 9] << 8);

            *(p_out++) = (p_block->p_buffer[ 4] << 24)
                       | (p_block->p_buffer[ 5] << 16)
                       | (p_block->p_buffer[10] << 8);

            *(p_out++) = (p_block->p_buffer[ 6] << 24)
                       | (p_block->p_buffer[ 7] << 16)
                       | (p_block->p_buffer[11] << 8);

            p_block->i_buffer -= 12;
            p_block->p_buffer += 12;
        }
    }
    else if( i_bits == 20 )
    {
        uint32_t *p_out = (uint32_t *)p_aout_buffer->p_buffer;

        while( p_block->i_buffer / 10 )
        {

            *(p_out++) = ( p_block->p_buffer[0] << 24)
                       | ( p_block->p_buffer[1] << 16)
                       | ((p_block->p_buffer[8] & 0xF0) << 8);

            *(p_out++) = ( p_block->p_buffer[2] << 24)
                       | ( p_block->p_buffer[3] << 16)
                       | ((p_block->p_buffer[8] & 0x0F) << 12);

            *(p_out++) = ( p_block->p_buffer[4] << 24)
                       | ( p_block->p_buffer[5] << 16)
                       | ((p_block->p_buffer[9] & 0xF0) << 8);

            *(p_out++) = ( p_block->p_buffer[6] << 24)
                       | ( p_block->p_buffer[7] << 16)
                       | ((p_block->p_buffer[9] & 0x0F) << 12);

            p_block->i_buffer -= 10;
            p_block->p_buffer += 10;
        }
    }
    else
    {
        assert( i_bits == 16 );



        swab( p_block->p_buffer, p_aout_buffer->p_buffer, p_block->i_buffer );

    }
}
