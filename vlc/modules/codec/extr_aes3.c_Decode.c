
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_16__ {int end_date; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_17__ {int i_buffer; size_t* p_buffer; scalar_t__ i_pts; scalar_t__ i_length; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ AES3_HEADER_LEN ;
 TYPE_3__* Parse (TYPE_1__*,int*,int*,TYPE_3__*,int) ;
 int VLCDEC_SUCCESS ;
 int assert (int) ;
 int block_Release (TYPE_3__*) ;
 scalar_t__ date_Get (int *) ;
 scalar_t__ date_Increment (int *,int) ;
 TYPE_3__* decoder_NewAudioBuffer (TYPE_1__*,int) ;
 int decoder_QueueAudio (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ decoder_UpdateAudioFormat (TYPE_1__*) ;
 int* reverse ;

__attribute__((used)) static int Decode( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_aout_buffer;
    int i_frame_length, i_bits;

    p_block = Parse( p_dec, &i_frame_length, &i_bits, p_block, 0 );
    if( !p_block )
        return VLCDEC_SUCCESS;

    if( decoder_UpdateAudioFormat( p_dec ) )
    {
        p_aout_buffer = ((void*)0);
        goto exit;
    }

    p_aout_buffer = decoder_NewAudioBuffer( p_dec, i_frame_length );
    if( p_aout_buffer == ((void*)0) )
        goto exit;

    p_aout_buffer->i_pts = date_Get( &p_sys->end_date );
    p_aout_buffer->i_length = date_Increment( &p_sys->end_date,
                                      i_frame_length ) - p_aout_buffer->i_pts;

    p_block->i_buffer -= AES3_HEADER_LEN;
    p_block->p_buffer += AES3_HEADER_LEN;

    if( i_bits == 24 )
    {
        uint32_t *p_out = (uint32_t *)p_aout_buffer->p_buffer;

        while( p_block->i_buffer / 7 )
        {
            *(p_out++) = (reverse[p_block->p_buffer[0]] << 8)
                        | (reverse[p_block->p_buffer[1]] << 16)
                        | (reverse[p_block->p_buffer[2]] << 24);
            *(p_out++) = ((reverse[p_block->p_buffer[3]] << 4)
                        | (reverse[p_block->p_buffer[4]] << 12)
                        | (reverse[p_block->p_buffer[5]] << 20)
                        | (reverse[p_block->p_buffer[6]] << 28)) & 0xFFFFFF00;

            p_block->i_buffer -= 7;
            p_block->p_buffer += 7;
        }

    }
    else if( i_bits == 20 )
    {
        uint32_t *p_out = (uint32_t *)p_aout_buffer->p_buffer;

        while( p_block->i_buffer / 6 )
        {
            *(p_out++) = (reverse[p_block->p_buffer[0]] << 12)
                       | (reverse[p_block->p_buffer[1]] << 20)
                       | (reverse[p_block->p_buffer[2]] << 28);
            *(p_out++) = (reverse[p_block->p_buffer[3]] << 12)
                       | (reverse[p_block->p_buffer[4]] << 20)
                       | (reverse[p_block->p_buffer[5]] << 28);

            p_block->i_buffer -= 6;
            p_block->p_buffer += 6;
        }
    }
    else
    {
        uint16_t *p_out = (uint16_t *)p_aout_buffer->p_buffer;

        assert( i_bits == 16 );

        while( p_block->i_buffer / 5 )
        {
            *(p_out++) = reverse[p_block->p_buffer[0]]
                        |(reverse[p_block->p_buffer[1]] << 8);
            *(p_out++) = (reverse[p_block->p_buffer[2]] >> 4)
                       | (reverse[p_block->p_buffer[3]] << 4)
                       | (reverse[p_block->p_buffer[4]] << 12);

            p_block->i_buffer -= 5;
            p_block->p_buffer += 5;
        }
    }

exit:
    block_Release( p_block );
    if( p_aout_buffer != ((void*)0) )
        decoder_QueueAudio( p_dec, p_aout_buffer );
    return VLCDEC_SUCCESS;
}
