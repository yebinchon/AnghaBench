
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int bytes; scalar_t__ packet; } ;
typedef TYPE_2__ ogg_packet ;
typedef int int16_t ;
struct TYPE_15__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_16__ {scalar_t__ i_frame_in_packet; TYPE_1__* p_header; int end_date; int stereo; int bits; int p_state; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_17__ {scalar_t__ i_pts; scalar_t__ i_length; scalar_t__ p_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_13__ {scalar_t__ frames_per_packet; int nb_channels; int frame_size; } ;


 scalar_t__ date_Get (int *) ;
 scalar_t__ date_Increment (int *,int ) ;
 TYPE_5__* decoder_NewAudioBuffer (TYPE_3__*,int ) ;
 scalar_t__ decoder_UpdateAudioFormat (TYPE_3__*) ;
 int msg_Err (TYPE_3__*,char*) ;
 int speex_bits_read_from (int *,char*,int ) ;
 scalar_t__ speex_bits_remaining (int *) ;
 int speex_decode_int (int ,int *,int *) ;
 int speex_decode_stereo_int (int *,int ,int *) ;

__attribute__((used)) static block_t *DecodePacket( decoder_t *p_dec, ogg_packet *p_oggpacket )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_oggpacket->bytes )
    {

        speex_bits_read_from( &p_sys->bits, (char *)p_oggpacket->packet,
                              p_oggpacket->bytes );
        p_sys->i_frame_in_packet = 0;
    }


    if( p_sys->i_frame_in_packet < p_sys->p_header->frames_per_packet )
    {
        block_t *p_aout_buffer;
        if( p_sys->p_header->frame_size == 0 )
            return ((void*)0);

        if( decoder_UpdateAudioFormat( p_dec ) )
            return ((void*)0);
        p_aout_buffer =
            decoder_NewAudioBuffer( p_dec, p_sys->p_header->frame_size );
        if( !p_aout_buffer )
        {
            return ((void*)0);
        }

        switch( speex_decode_int( p_sys->p_state, &p_sys->bits,
                                  (int16_t *)p_aout_buffer->p_buffer ) )
        {
            case -2:
                msg_Err( p_dec, "decoding error: corrupted stream?" );

            case -1:
                return ((void*)0);
        }

        if( speex_bits_remaining( &p_sys->bits ) < 0 )
        {
            msg_Err( p_dec, "decoding overflow: corrupted stream?" );
        }

        if( p_sys->p_header->nb_channels == 2 )
            speex_decode_stereo_int( (int16_t *)p_aout_buffer->p_buffer,
                                     p_sys->p_header->frame_size,
                                     &p_sys->stereo );


        p_aout_buffer->i_pts = date_Get( &p_sys->end_date );
        p_aout_buffer->i_length =
            date_Increment( &p_sys->end_date, p_sys->p_header->frame_size )
            - p_aout_buffer->i_pts;

        p_sys->i_frame_in_packet++;

        return p_aout_buffer;
    }
    else
    {
        return ((void*)0);
    }
}
