
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int bytes; scalar_t__ packet; } ;
typedef TYPE_2__ ogg_packet ;
struct TYPE_22__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_23__ {int bits; int p_state; TYPE_1__* p_header; scalar_t__ b_packetizer; int end_date; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_24__ {scalar_t__ i_pts; int i_buffer; scalar_t__ p_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_20__ {int frames_per_packet; int frame_size; } ;


 TYPE_5__* DecodePacket (TYPE_3__*,TYPE_2__*) ;
 TYPE_5__* SendPacket (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ VLC_TICK_INVALID ;
 TYPE_5__* block_Alloc (int) ;
 TYPE_5__* block_Realloc (TYPE_5__*,int ,int) ;
 int block_Release (TYPE_5__*) ;
 scalar_t__ date_Get (int *) ;
 int date_Set (int *,scalar_t__) ;
 int free (short*) ;
 int memset (scalar_t__,int,int) ;
 int speex_bits_read_from (int *,char*,int ) ;
 int speex_bits_remaining (int *) ;
 int speex_bits_reset (int *) ;
 int speex_bits_rewind (int *) ;
 int speex_bits_write (int *,char*,int) ;
 int speex_decode_int (int ,int *,short*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static block_t *ProcessPacket( decoder_t *p_dec, ogg_packet *p_oggpacket,
                               block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_block = *pp_block;


    if( p_block && p_block->i_pts != VLC_TICK_INVALID &&
        p_block->i_pts != date_Get( &p_sys->end_date ) )
    {
        date_Set( &p_sys->end_date, p_block->i_pts );
    }

    if( date_Get( &p_sys->end_date ) == VLC_TICK_INVALID )
    {

        if( p_block ) block_Release( p_block );
        return ((void*)0);
    }

    *pp_block = ((void*)0);

    if( p_sys->b_packetizer )
    {
        if ( p_sys->p_header->frames_per_packet > 1 )
        {
            short *p_frame_holder = ((void*)0);
            int i_bits_before = 0, i_bits_after = 0, i_bytes_in_speex_frame = 0,
                i_pcm_output_size = 0, i_bits_in_speex_frame = 0;
            block_t *p_new_block = ((void*)0);

            i_pcm_output_size = p_sys->p_header->frame_size;
            p_frame_holder = (short*)xmalloc( sizeof(short)*i_pcm_output_size );

            speex_bits_read_from( &p_sys->bits, (char*)p_oggpacket->packet,
                p_oggpacket->bytes);
            i_bits_before = speex_bits_remaining( &p_sys->bits );
            speex_decode_int(p_sys->p_state, &p_sys->bits, p_frame_holder);
            i_bits_after = speex_bits_remaining( &p_sys->bits );

            i_bits_in_speex_frame = i_bits_before - i_bits_after;
            i_bytes_in_speex_frame = ( i_bits_in_speex_frame +
                (8 - (i_bits_in_speex_frame % 8)) )
                / 8;

            p_new_block = block_Alloc( i_bytes_in_speex_frame );
            memset( p_new_block->p_buffer, 0xff, i_bytes_in_speex_frame );




            speex_bits_rewind( &p_sys->bits );
            speex_bits_write( &p_sys->bits,
                (char*)p_new_block->p_buffer,
                (int)i_bytes_in_speex_frame );
            if ( i_bits_after > 7 )
            {



                i_bytes_in_speex_frame--;
                speex_bits_write( &p_sys->bits,
                    (char*)p_block->p_buffer,
                    p_block->i_buffer - i_bytes_in_speex_frame );
                p_block = block_Realloc( p_block,
                    0,
                    p_block->i_buffer-i_bytes_in_speex_frame );
                *pp_block = p_block;
            }
            else
            {
                speex_bits_reset( &p_sys->bits );
            }

            free( p_frame_holder );
            return SendPacket( p_dec, p_new_block);
        }
        else
        {
                return SendPacket( p_dec, p_block );
        }
    }
    else
    {
        block_t *p_aout_buffer = DecodePacket( p_dec, p_oggpacket );

        if( p_block )
            block_Release( p_block );
        return p_aout_buffer;
    }
}
