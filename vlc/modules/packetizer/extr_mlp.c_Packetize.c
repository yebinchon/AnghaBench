
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_31__ {int i_samples; int i_channels_conf; int i_channels; int i_rate; } ;
typedef TYPE_4__ mlp_header_t ;
struct TYPE_28__ {int i_frame_length; int i_bytes_per_frame; int i_physical_channels; int i_channels; int i_rate; } ;
struct TYPE_29__ {TYPE_1__ audio; } ;
struct TYPE_32__ {TYPE_2__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_27__ {TYPE_3__* p_block; } ;
struct TYPE_33__ {int i_state; int b_mlp; scalar_t__ i_pts; int b_discontinuity; TYPE_10__ bytestream; TYPE_4__ mlp; int end_date; int i_frame_size; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_34__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_dts; scalar_t__ i_length; int i_nb_samples; int * p_buffer; int i_buffer; } ;
typedef TYPE_7__ block_t ;
struct TYPE_30__ {scalar_t__ i_pts; } ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int Flush (TYPE_5__*) ;
 int MLP_HEADER_SIZE ;






 int SyncInfo (int *,int*,TYPE_4__*) ;
 int SyncInfoDolby (int *) ;
 scalar_t__ VLC_TICK_INVALID ;
 TYPE_7__* block_Alloc (int ) ;
 int block_BytestreamFlush (TYPE_10__*) ;
 TYPE_7__* block_BytestreamPop (TYPE_10__*) ;
 int block_BytestreamPush (TYPE_10__*,TYPE_7__*) ;
 int block_GetBytes (TYPE_10__*,int *,int ) ;
 int block_PeekBytes (TYPE_10__*,int *,int) ;
 int block_PeekOffsetBytes (TYPE_10__*,int ,int *,int) ;
 int block_Release (TYPE_7__*) ;
 int block_SkipByte (TYPE_10__*) ;
 int block_WaitBytes (TYPE_10__*,int ) ;
 int date_Change (int *,int ,int) ;
 scalar_t__ date_Get (int *) ;
 scalar_t__ date_Increment (int *,int ) ;
 int date_Set (int *,scalar_t__) ;
 int msg_Dbg (TYPE_5__*,char*) ;
 int msg_Info (TYPE_5__*,char*,int ,int ) ;

__attribute__((used)) static block_t *Packetize( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t p_header[MLP_HEADER_SIZE];
    block_t *p_out_buffer;

    block_t *p_block = pp_block ? *pp_block : ((void*)0);

    if ( p_block )
    {
        if( p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED) )
        {

            block_t *p_drain = Packetize( p_dec, ((void*)0) );
            if( p_drain )
                return p_drain;

            Flush( p_dec );

            if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
            {
                block_Release( p_block );
                return ((void*)0);
            }
        }

        if( p_block->i_pts == VLC_TICK_INVALID &&
            date_Get( &p_sys->end_date ) == VLC_TICK_INVALID )
        {

            msg_Dbg( p_dec, "waiting for PTS" );
            block_Release( p_block );
            return ((void*)0);
        }

        block_BytestreamPush( &p_sys->bytestream, p_block );
    }

    for( ;; )
    {
        switch( p_sys->i_state )
        {
        case 130:
            while( !block_PeekBytes( &p_sys->bytestream, p_header, MLP_HEADER_SIZE ) )
            {
                if( SyncInfo( p_header, &p_sys->b_mlp, &p_sys->mlp ) > 0 )
                {
                    p_sys->i_state = 128;
                    break;
                }
                else if( SyncInfoDolby( p_header ) > 0 )
                {
                    p_sys->i_state = 128;
                    break;
                }
                block_SkipByte( &p_sys->bytestream );
            }
            if( p_sys->i_state != 128 )
            {
                block_BytestreamFlush( &p_sys->bytestream );


                return ((void*)0);
            }


        case 128:

            p_sys->i_pts = p_sys->bytestream.p_block->i_pts;
            if( p_sys->i_pts != VLC_TICK_INVALID &&
                p_sys->i_pts != date_Get( &p_sys->end_date ) )
            {
                date_Set( &p_sys->end_date, p_sys->i_pts );
            }
            p_sys->i_state = 132;


        case 132:

            if( block_PeekBytes( &p_sys->bytestream, p_header, MLP_HEADER_SIZE ) )
            {

                return ((void*)0);
            }


            p_sys->i_frame_size = SyncInfoDolby( p_header );
            if( p_sys->i_frame_size <= 0 )
                p_sys->i_frame_size = SyncInfo( p_header, &p_sys->b_mlp, &p_sys->mlp );
            if( p_sys->i_frame_size <= 0 )
            {
                msg_Dbg( p_dec, "emulated sync word" );
                block_SkipByte( &p_sys->bytestream );
                p_sys->b_mlp = 0;
                p_sys->i_state = 130;
                break;
            }
            p_sys->i_state = 131;


        case 131:

            if( block_PeekOffsetBytes( &p_sys->bytestream,
                                       p_sys->i_frame_size, p_header, MLP_HEADER_SIZE ) )
            {
                if( p_block == ((void*)0) )
                {
                    p_sys->i_state = 133;
                    break;
                }

                return ((void*)0);
            }

            bool b_mlp = p_sys->b_mlp;
            mlp_header_t mlp = p_sys->mlp;
            if( SyncInfo( p_header, &b_mlp, &mlp ) <= 0 && SyncInfoDolby( p_header ) <= 0 )
            {
                msg_Dbg( p_dec, "emulated sync word "
                         "(no sync on following frame)" );
                p_sys->b_mlp = 0;
                p_sys->i_state = 130;
                block_SkipByte( &p_sys->bytestream );
                break;
            }
            p_sys->i_state = 133;
            break;

        case 133:

            if( block_WaitBytes( &p_sys->bytestream, p_sys->i_frame_size ) )
            {

                return ((void*)0);
            }
            p_sys->i_state = 129;


        case 129:


            p_out_buffer = block_Alloc( p_sys->i_frame_size );
            if( !p_out_buffer )
                return ((void*)0);


            block_GetBytes( &p_sys->bytestream,
                            p_out_buffer->p_buffer, p_out_buffer->i_buffer );


            if( SyncInfoDolby( p_out_buffer->p_buffer ) > 0 )
            {
                block_Release( p_out_buffer );
                p_sys->i_state = 130;
                break;
            }


            if( p_dec->fmt_out.audio.i_rate != p_sys->mlp.i_rate )
            {
                msg_Info( p_dec, "MLP channels: %d samplerate: %d",
                          p_sys->mlp.i_channels, p_sys->mlp.i_rate );

                if( p_sys->mlp.i_rate > 0 )
                    date_Change( &p_sys->end_date, p_sys->mlp.i_rate, 1 );
            }

            p_dec->fmt_out.audio.i_rate = p_sys->mlp.i_rate;
            p_dec->fmt_out.audio.i_channels = p_sys->mlp.i_channels;
            p_dec->fmt_out.audio.i_physical_channels = p_sys->mlp.i_channels_conf;
            p_dec->fmt_out.audio.i_bytes_per_frame = p_sys->i_frame_size;
            p_dec->fmt_out.audio.i_frame_length = p_sys->mlp.i_samples;

            p_out_buffer->i_pts = p_out_buffer->i_dts = date_Get( &p_sys->end_date );
            p_out_buffer->i_nb_samples = p_sys->mlp.i_samples;

            p_out_buffer->i_length =
                date_Increment( &p_sys->end_date, p_sys->mlp.i_samples ) - p_out_buffer->i_pts;


            if( p_sys->i_pts == p_sys->bytestream.p_block->i_pts )
                p_sys->i_pts = p_sys->bytestream.p_block->i_pts = VLC_TICK_INVALID;

            if( p_sys->b_discontinuity )
            {
                p_out_buffer->i_flags |= BLOCK_FLAG_DISCONTINUITY;
                p_sys->b_discontinuity = 0;
            }


            if( pp_block )
                *pp_block = block_BytestreamPop( &p_sys->bytestream );

            p_sys->i_state = 130;

            return p_out_buffer;
        }
    }

    return ((void*)0);
}
