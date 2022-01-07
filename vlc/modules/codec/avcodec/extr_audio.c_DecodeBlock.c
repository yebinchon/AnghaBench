
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_33__ {unsigned int i_rate; int i_bytes_per_frame; } ;
struct TYPE_34__ {TYPE_2__ audio; } ;
struct TYPE_32__ {scalar_t__ i_extra; } ;
struct TYPE_35__ {TYPE_3__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_36__ {scalar_t__ i_reject_count; TYPE_8__* p_context; int end_date; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_37__ {int i_flags; scalar_t__ i_pts; size_t i_buffer; int i_nb_samples; scalar_t__ i_length; int * p_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_39__ {scalar_t__ channels; scalar_t__ sample_rate; int extradata_size; } ;
struct TYPE_38__ {size_t size; int * data; } ;
typedef TYPE_7__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_8__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_ERROR_MAX_STRING_SIZE ;
 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int BLOCK_FLAG_PRIVATE_REALLOCATED ;
 TYPE_6__* ConvertAVFrame (TYPE_4__*,int *) ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 size_t FF_INPUT_BUFFER_PADDING_SIZE ;
 int Flush (TYPE_4__*) ;
 scalar_t__ INPUT_CHAN_MAX ;
 int InitDecoderConfig (TYPE_4__*,TYPE_8__*) ;
 int OpenAudioCodec (TYPE_4__*) ;
 int SetupOutputFormat (TYPE_4__*,int) ;
 int VLCDEC_ECRITICAL ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_init_packet (TYPE_7__*) ;
 int av_strerror (int,char*,int) ;
 int avcodec_flush_buffers (TYPE_8__*) ;
 int avcodec_is_open (TYPE_8__*) ;
 int avcodec_receive_frame (TYPE_8__*,int *) ;
 int avcodec_send_packet (TYPE_8__*,TYPE_7__*) ;
 TYPE_6__* block_Realloc (TYPE_6__*,int ,size_t) ;
 int block_Release (TYPE_6__*) ;
 scalar_t__ date_Get (int *) ;
 scalar_t__ date_Increment (int *,int) ;
 int date_Init (int *,scalar_t__,int) ;
 int date_Set (int *,scalar_t__) ;
 int decoder_QueueAudio (TYPE_4__*,TYPE_6__*) ;
 scalar_t__ decoder_UpdateAudioFormat (TYPE_4__*) ;
 int memset (int *,int ,size_t) ;
 int msg_Err (TYPE_4__*,char*,char*) ;
 int msg_Warn (TYPE_4__*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *ctx = p_sys->p_context;
    AVFrame *frame = ((void*)0);
    block_t *p_block = ((void*)0);
    bool b_error = 0;

    if( !ctx->extradata_size && p_dec->fmt_in.i_extra
     && !avcodec_is_open( ctx ) )
    {
        InitDecoderConfig( p_dec, ctx );
        OpenAudioCodec( p_dec );
    }

    if( !avcodec_is_open( ctx ) )
    {
        if( pp_block )
            p_block = *pp_block;
        goto drop;
    }

    if( pp_block == ((void*)0) )
    {

        (void) avcodec_send_packet( ctx, ((void*)0) );
    }
    else
    {
        p_block = *pp_block;
    }

    if( p_block )
    {
        if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
        {
            Flush( p_dec );
            goto drop;
        }

        if( p_block->i_flags & BLOCK_FLAG_DISCONTINUITY )
        {
            date_Set( &p_sys->end_date, VLC_TICK_INVALID );
        }


        if( p_block->i_pts == VLC_TICK_INVALID &&
            date_Get( &p_sys->end_date ) == VLC_TICK_INVALID )
            goto drop;

        if( p_block->i_buffer <= 0 )
            goto drop;

        if( (p_block->i_flags & BLOCK_FLAG_PRIVATE_REALLOCATED) == 0 )
        {
            *pp_block = p_block = block_Realloc( p_block, 0, p_block->i_buffer + FF_INPUT_BUFFER_PADDING_SIZE );
            if( !p_block )
                goto end;
            p_block->i_buffer -= FF_INPUT_BUFFER_PADDING_SIZE;
            memset( &p_block->p_buffer[p_block->i_buffer], 0, FF_INPUT_BUFFER_PADDING_SIZE );

            p_block->i_flags |= BLOCK_FLAG_PRIVATE_REALLOCATED;
        }
    }

    frame = av_frame_alloc();
    if (unlikely(frame == ((void*)0)))
        goto end;

    for( int ret = 0; ret == 0; )
    {

        if( p_block )
        {
            AVPacket pkt;
            av_init_packet( &pkt );
            pkt.data = p_block->p_buffer;
            pkt.size = p_block->i_buffer;
            ret = avcodec_send_packet( ctx, &pkt );
            if( ret == 0 )
            {


                if( p_block->i_pts > date_Get( &p_sys->end_date ) )
                {
                    date_Set( &p_sys->end_date, p_block->i_pts );
                }

                block_Release( p_block );
                *pp_block = p_block = ((void*)0);
            }
            else if ( ret != AVERROR(EAGAIN) )
            {
                if( ret == AVERROR(ENOMEM) || ret == AVERROR(EINVAL) )
                    goto end;
                else
                {
                    char errorstring[AV_ERROR_MAX_STRING_SIZE];
                    if( !av_strerror( ret, errorstring, AV_ERROR_MAX_STRING_SIZE ) )
                        msg_Err( p_dec, "%s", errorstring );
                    goto drop;
                }
            }
        }


        ret = avcodec_receive_frame( ctx, frame );
        if( ret == 0 )
        {

            if( ctx->channels <= 0 || ctx->channels > INPUT_CHAN_MAX
             || ctx->sample_rate <= 0 )
            {
                msg_Warn( p_dec, "invalid audio properties channels count %d, sample rate %d",
                          ctx->channels, ctx->sample_rate );
                goto drop;
            }
            else if( p_dec->fmt_out.audio.i_rate != (unsigned int)ctx->sample_rate )
            {
                date_Init( &p_sys->end_date, ctx->sample_rate, 1 );
            }

            SetupOutputFormat( p_dec, 1 );
            if( decoder_UpdateAudioFormat( p_dec ) )
                goto drop;

            block_t *p_converted = ConvertAVFrame( p_dec, frame );
            if( p_converted )
            {

                if( p_sys->i_reject_count > 0 )
                {
                    memset( p_converted->p_buffer, 0, p_converted->i_buffer );
                    p_sys->i_reject_count--;
                }
                p_converted->i_buffer = p_converted->i_nb_samples
                                      * p_dec->fmt_out.audio.i_bytes_per_frame;
                p_converted->i_pts = date_Get( &p_sys->end_date );
                p_converted->i_length = date_Increment( &p_sys->end_date,
                                                      p_converted->i_nb_samples ) - p_converted->i_pts;

                decoder_QueueAudio( p_dec, p_converted );
            }


            frame = av_frame_alloc();
            if (unlikely(frame == ((void*)0)))
                break;
        }
        else
        {

            if( ret == AVERROR_EOF )
                avcodec_flush_buffers( p_sys->p_context );
            av_frame_free( &frame );
        }
    };

    return VLCDEC_SUCCESS;

end:
    b_error = 1;
drop:
    if( pp_block )
    {
        assert( *pp_block == p_block );
        *pp_block = ((void*)0);
    }
    if( p_block != ((void*)0) )
        block_Release(p_block);
    if( frame != ((void*)0) )
        av_frame_free( &frame );

    return (b_error) ? VLCDEC_ECRITICAL : VLCDEC_SUCCESS;
}
