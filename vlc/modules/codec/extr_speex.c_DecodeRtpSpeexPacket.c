
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_21__ {size_t i_channels; unsigned int i_bytes_per_frame; int i_rate; int i_physical_channels; } ;
struct TYPE_22__ {TYPE_1__ audio; } ;
struct TYPE_23__ {TYPE_2__ fmt_out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_27__ {scalar_t__ buf_size; } ;
struct TYPE_24__ {int rtp_rate; int i_frame_in_packet; TYPE_6__* p_header; int end_date; TYPE_7__ bits; int p_state; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_25__ {scalar_t__ i_pts; scalar_t__ i_buffer; scalar_t__ i_length; scalar_t__ p_buffer; int i_dts; } ;
typedef TYPE_5__ block_t ;
struct TYPE_26__ {int vbr; int frames_per_packet; size_t nb_channels; int frame_size; int rate; } ;
typedef int SpeexMode ;
typedef int SpeexHeader ;


 int SPEEX_MODE_FRAME_SIZE ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_5__*) ;
 scalar_t__ date_Get (int *) ;
 scalar_t__ date_Increment (int *,int ) ;
 int date_Init (int *,int ,int) ;
 int date_Set (int *,int ) ;
 TYPE_5__* decoder_NewAudioBuffer (TYPE_3__*,int ) ;
 int decoder_QueueAudio (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ decoder_UpdateAudioFormat (TYPE_3__*) ;
 int free (TYPE_6__*) ;
 TYPE_6__* malloc (int) ;
 int msg_Err (TYPE_3__*,char*) ;
 int speex_bits_init (TYPE_7__*) ;
 int speex_bits_read_from (TYPE_7__*,char*,scalar_t__) ;
 int speex_decode_int (int ,TYPE_7__*,int *) ;
 int speex_decoder_destroy (int ) ;
 int speex_decoder_init (int const*) ;
 int speex_init_header (TYPE_6__*,int,int,int const*) ;
 int * speex_lib_get_mode (int) ;
 scalar_t__ speex_mode_query (int *,int ,unsigned int*) ;
 int speex_nb_mode ;
 int * vlc_chan_maps ;

__attribute__((used)) static int DecodeRtpSpeexPacket( decoder_t *p_dec, block_t *p_speex_bit_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_aout_buffer;
    int i_decode_ret;
    unsigned int i_speex_frame_size;

    if ( !p_speex_bit_block || p_speex_bit_block->i_pts == VLC_TICK_INVALID )
        return VLCDEC_SUCCESS;





    if ( p_sys->bits.buf_size==0 )
    {
        p_sys->p_header = malloc(sizeof(SpeexHeader));
        if ( !p_sys->p_header )
        {
            msg_Err( p_dec, "Could not allocate a Speex header.");
            return VLCDEC_SUCCESS;
        }

        const SpeexMode *mode = speex_lib_get_mode((p_sys->rtp_rate / 8000) >> 1);

        speex_init_header( p_sys->p_header,p_sys->rtp_rate, 1, mode );
        speex_bits_init( &p_sys->bits );
        p_sys->p_state = speex_decoder_init( mode );
        if ( !p_sys->p_state )
        {
            msg_Err( p_dec, "Could not allocate a Speex decoder." );
            free( p_sys->p_header );
            return VLCDEC_SUCCESS;
        }





        p_sys->p_header->vbr = 1;
        p_sys->p_header->frames_per_packet = 1;

        p_dec->fmt_out.audio.i_channels = p_sys->p_header->nb_channels;
        p_dec->fmt_out.audio.i_physical_channels =
            vlc_chan_maps[p_sys->p_header->nb_channels];
        p_dec->fmt_out.audio.i_rate = p_sys->p_header->rate;

        if ( speex_mode_query( &speex_nb_mode,
                               SPEEX_MODE_FRAME_SIZE,
                               &i_speex_frame_size ) )
        {
            msg_Err( p_dec, "Could not determine the frame size." );
            speex_decoder_destroy( p_sys->p_state );
            free( p_sys->p_header );
            return VLCDEC_SUCCESS;
        }
        p_dec->fmt_out.audio.i_bytes_per_frame = i_speex_frame_size;

        date_Init(&p_sys->end_date, p_sys->p_header->rate, 1);
    }





    if ( !p_sys->p_header )
    {
        msg_Err( p_dec, "There is no valid Speex header found." );
        return VLCDEC_SUCCESS;
    }

    if ( date_Get( &p_sys->end_date ) == VLC_TICK_INVALID )
        date_Set( &p_sys->end_date, p_speex_bit_block->i_dts );





    if( decoder_UpdateAudioFormat( p_dec ) )
        p_aout_buffer = ((void*)0);
    else
        p_aout_buffer = decoder_NewAudioBuffer( p_dec,
            p_sys->p_header->frame_size );
    if ( !p_aout_buffer || p_aout_buffer->i_buffer == 0 )
    {
        msg_Err(p_dec, "Oops: No new buffer was returned!");
        return VLCDEC_SUCCESS;
    }




    speex_bits_read_from( &p_sys->bits,
        (char*)p_speex_bit_block->p_buffer,
        p_speex_bit_block->i_buffer );





    i_decode_ret = speex_decode_int( p_sys->p_state, &p_sys->bits,
            (int16_t*)p_aout_buffer->p_buffer );
    if ( i_decode_ret < 0 )
    {
        msg_Err( p_dec, "Decoding failed. Perhaps we have a bad stream?" );
        return VLCDEC_SUCCESS;
    }




    p_aout_buffer->i_pts = date_Get( &p_sys->end_date );
    p_aout_buffer->i_length = date_Increment( &p_sys->end_date,
        p_sys->p_header->frame_size ) - p_aout_buffer->i_pts;


    p_sys->i_frame_in_packet++;
    block_Release( p_speex_bit_block );
    decoder_QueueAudio( p_dec, p_aout_buffer );
    return VLCDEC_SUCCESS;
}
