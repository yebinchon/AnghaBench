
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_10__ ;


struct TYPE_31__ {int i_frame_size; int i_substream_header_size; int syncword; int i_frame_length; int i_rate; } ;
typedef TYPE_3__ vlc_dts_header_t ;
typedef int uint8_t ;
struct TYPE_30__ {void* i_profile; } ;
struct TYPE_32__ {TYPE_2__ fmt_out; TYPE_5__* p_sys; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_28__ {TYPE_1__* p_block; } ;
struct TYPE_33__ {int i_state; scalar_t__ i_pts; int i_input_size; int i_next_offset; int b_discontinuity; TYPE_10__ bytestream; TYPE_3__ second; TYPE_3__ first; int end_date; } ;
typedef TYPE_5__ decoder_sys_t ;
struct TYPE_34__ {int i_flags; scalar_t__ i_pts; int i_buffer; int p_buffer; } ;
typedef TYPE_6__ block_t ;
struct TYPE_29__ {scalar_t__ i_pts; } ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int DTS_SYNC_SUBSTREAM ;
 int DTS_SYNC_SUBSTREAM_LBR ;
 TYPE_6__* GetOutBuffer (TYPE_4__*) ;
 void* PROFILE_DTS ;
 void* PROFILE_DTS_EXPRESS ;
 void* PROFILE_DTS_HD ;
 int PacketizeFlush (TYPE_4__*) ;
 int VLC_DTS_HEADER_SIZE ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 int block_BytestreamFlush (TYPE_10__*) ;
 TYPE_6__* block_BytestreamPop (TYPE_10__*) ;
 int block_BytestreamPush (TYPE_10__*,TYPE_6__*) ;
 int block_GetBytes (TYPE_10__*,int ,int ) ;
 int block_PeekBytes (TYPE_10__*,int *,int) ;
 int block_PeekOffsetBytes (TYPE_10__*,int,int *,int) ;
 int block_Release (TYPE_6__*) ;
 int block_SkipByte (TYPE_10__*) ;
 int block_SkipBytes (TYPE_10__*,int) ;
 int block_WaitBytes (TYPE_10__*,int) ;
 scalar_t__ date_Get (int *) ;
 int date_Set (int *,scalar_t__) ;
 int msg_Dbg (TYPE_4__*,char*) ;
 int msg_Warn (TYPE_4__*,char*) ;
 int vlc_dts_header_IsSync (int *,int) ;
 int vlc_dts_header_Parse (TYPE_3__*,int *,int) ;

__attribute__((used)) static block_t *PacketizeBlock( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t p_header[VLC_DTS_HEADER_SIZE];
    block_t *p_out_buffer;

    block_t *p_block = pp_block ? *pp_block : ((void*)0);

    if( p_block )
    {
        if ( p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY|BLOCK_FLAG_CORRUPTED) ) {

            block_t *p_drain = PacketizeBlock( p_dec, ((void*)0) );
            if(p_drain)
                return p_drain;

            PacketizeFlush( p_dec );

            if ( p_block->i_flags & BLOCK_FLAG_CORRUPTED ) {
                block_Release( p_block );
                return ((void*)0);
            }
        }

        if ( p_block->i_pts == VLC_TICK_INVALID &&
             date_Get( &p_sys->end_date ) == VLC_TICK_INVALID ) {

            block_Release( p_block );
            return ((void*)0);
        }

        block_BytestreamPush( &p_sys->bytestream, p_block );
    }

    while( 1 )
    {
        switch( p_sys->i_state )
        {
        case 131:
            while( block_PeekBytes( &p_sys->bytestream, p_header, 6 )
                   == VLC_SUCCESS )
            {
                if( vlc_dts_header_IsSync( p_header, 6 ) )
                {
                    p_sys->i_state = 129;
                    break;
                }
                block_SkipByte( &p_sys->bytestream );
            }
            if( p_sys->i_state != 129 )
            {
                block_BytestreamFlush( &p_sys->bytestream );


                return ((void*)0);
            }


        case 129:

            p_sys->i_pts = p_sys->bytestream.p_block->i_pts;
            if( p_sys->i_pts != VLC_TICK_INVALID &&
                p_sys->i_pts != date_Get( &p_sys->end_date ) )
            {
                date_Set( &p_sys->end_date, p_sys->i_pts );
            }
            p_sys->i_state = 134;


        case 134:

            if( block_PeekBytes( &p_sys->bytestream, p_header,
                                 VLC_DTS_HEADER_SIZE ) != VLC_SUCCESS )
            {

                return ((void*)0);
            }


            if( vlc_dts_header_Parse( &p_sys->first, p_header,
                                      VLC_DTS_HEADER_SIZE ) != VLC_SUCCESS )
            {
                msg_Dbg( p_dec, "emulated sync word" );
                block_SkipByte( &p_sys->bytestream );
                p_sys->i_state = 131;
                break;
            }

            if( p_sys->first.syncword == DTS_SYNC_SUBSTREAM )
                p_sys->i_state = 128;
            else
                p_sys->i_state = 133;
            p_sys->i_input_size = p_sys->i_next_offset = p_sys->first.i_frame_size;
            break;

        case 128:

            if( block_PeekOffsetBytes( &p_sys->bytestream,
                                       p_sys->first.i_substream_header_size,
                                       p_header,
                                       VLC_DTS_HEADER_SIZE ) != VLC_SUCCESS )
            {

                return ((void*)0);
            }

            vlc_dts_header_t xssheader;
            if( vlc_dts_header_Parse( &xssheader, p_header,
                                      VLC_DTS_HEADER_SIZE ) != VLC_SUCCESS )
            {
                msg_Dbg( p_dec, "emulated substream sync word, can't find extension" );
                block_SkipByte( &p_sys->bytestream );
                p_sys->i_state = 131;
                break;
            }

            if( xssheader.syncword == DTS_SYNC_SUBSTREAM_LBR )
            {






                p_dec->fmt_out.i_profile = PROFILE_DTS_EXPRESS;
                p_sys->first.i_rate = xssheader.i_rate;
                p_sys->first.i_frame_length = xssheader.i_frame_length;
                p_sys->i_state = 133;
                break;
            }

            msg_Warn( p_dec, "substream without the paired core stream, skip it" );
            p_sys->i_state = 131;
            p_dec->fmt_out.i_profile = PROFILE_DTS;
            if( block_SkipBytes( &p_sys->bytestream,
                                 p_sys->first.i_frame_size ) != VLC_SUCCESS )
                return ((void*)0);
            break;

        case 133:

            while( p_sys->i_state == 133 )
            {
                if( block_PeekOffsetBytes( &p_sys->bytestream,
                                           p_sys->i_next_offset, p_header,
                                           VLC_DTS_HEADER_SIZE )
                                           != VLC_SUCCESS )
                {
                    if( p_block == ((void*)0) )
                    {
                        p_sys->i_state = 135;
                        break;
                    }

                    return ((void*)0);
                }

                if( p_header[0] == 0 )
                {

                    p_sys->i_next_offset++;
                    continue;
                }

                if( !vlc_dts_header_IsSync( p_header, VLC_DTS_HEADER_SIZE ) )
                {

                    if( (p_sys->first.i_frame_size % 2) && p_sys->i_next_offset > 0 &&
                        block_PeekOffsetBytes( &p_sys->bytestream,
                                               p_sys->i_next_offset - 1, p_header,
                                               VLC_DTS_HEADER_SIZE ) == 0 &&
                         vlc_dts_header_IsSync( p_header, VLC_DTS_HEADER_SIZE ) )
                    {
                        p_sys->i_input_size = p_sys->i_next_offset = p_sys->first.i_frame_size - 1;

                        break;
                    }
                    msg_Dbg( p_dec, "emulated sync word "
                             "(no sync on following frame)" );
                    p_sys->i_state = 131;
                    block_SkipByte( &p_sys->bytestream );
                    break;
                }



                if( p_sys->i_next_offset == p_sys->first.i_frame_size &&
                    vlc_dts_header_Parse( &p_sys->second,
                                          p_header, VLC_DTS_HEADER_SIZE ) == VLC_SUCCESS &&
                    p_sys->second.syncword == DTS_SYNC_SUBSTREAM )
                {
                    p_sys->i_state = 132;
                }
                else
                {
                    p_dec->fmt_out.i_profile = PROFILE_DTS;
                    p_sys->i_state = 135;
                }
            }
            break;

        case 132:
            assert(p_sys->second.syncword == DTS_SYNC_SUBSTREAM);
            if( p_sys->first.syncword == DTS_SYNC_SUBSTREAM )
            {

                p_dec->fmt_out.i_profile = PROFILE_DTS_EXPRESS;
            }
            else
            {
                p_dec->fmt_out.i_profile = PROFILE_DTS_HD;
                p_sys->i_input_size += p_sys->second.i_frame_size;
            }
            p_sys->i_state = 135;
            break;

        case 135:

            if( block_WaitBytes( &p_sys->bytestream,
                                 p_sys->i_input_size ) != VLC_SUCCESS )
            {

                return ((void*)0);
            }
            p_sys->i_state = 130;


        case 130:
            if( !(p_out_buffer = GetOutBuffer( p_dec )) )
            {
                return ((void*)0);
            }



            block_GetBytes( &p_sys->bytestream, p_out_buffer->p_buffer,
                            p_out_buffer->i_buffer );


            if( p_sys->i_pts == p_sys->bytestream.p_block->i_pts )
                p_sys->i_pts = p_sys->bytestream.p_block->i_pts = VLC_TICK_INVALID;

            if( p_sys->b_discontinuity )
            {
                p_sys->b_discontinuity = 0;
                p_out_buffer->i_flags |= BLOCK_FLAG_DISCONTINUITY;
            }


            if( pp_block )
                *pp_block = block_BytestreamPop( &p_sys->bytestream );

            p_sys->i_state = 131;

            return p_out_buffer;
        }
    }
}
