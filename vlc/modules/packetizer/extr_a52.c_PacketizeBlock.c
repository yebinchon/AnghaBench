
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int strmtyp; } ;
struct TYPE_21__ {TYPE_1__ eac3; } ;
struct TYPE_23__ {int i_size; TYPE_2__ bs; int b_eac3; } ;
typedef TYPE_4__ vlc_a52_header_t ;
typedef int uint8_t ;
struct TYPE_22__ {int i_profile; int i_codec; } ;
struct TYPE_24__ {TYPE_3__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_25__ {int i_state; int b_discontuinity; int bytestream; int i_input_size; TYPE_4__ frame; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_26__ {int i_flags; int i_dts; int i_buffer; int p_buffer; } ;
typedef TYPE_7__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_DISCONTINUITY ;
 int EAC3_STRMTYP_DEPENDENT ;
 TYPE_7__* GetOutBuffer (TYPE_5__*) ;
 int PacketizeFlush (TYPE_5__*) ;






 int VLC_A52_MIN_HEADER_SIZE ;
 int VLC_A52_PROFILE_EAC3_DEPENDENT ;
 int VLC_CODEC_A52 ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int block_BytestreamFlush (int *) ;
 TYPE_7__* block_BytestreamPop (int *) ;
 int block_BytestreamPush (int *,TYPE_7__*) ;
 int block_GetBytes (int *,int ,int ) ;
 int block_PeekBytes (int *,int*,int) ;
 int block_PeekOffsetBytes (int *,int ,int*,int) ;
 int block_Release (TYPE_7__*) ;
 int block_SkipByte (int *) ;
 int block_SkipBytes (int *,int ) ;
 int block_WaitBytes (int *,int ) ;
 int msg_Dbg (TYPE_5__*,char*) ;
 int msg_Warn (TYPE_5__*,char*) ;
 int vlc_a52_header_Parse (TYPE_4__*,int*,int) ;

__attribute__((used)) static block_t *PacketizeBlock( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t p_header[VLC_A52_MIN_HEADER_SIZE];
    block_t *p_out_buffer;

    block_t *p_block = pp_block ? *pp_block : ((void*)0);

    if( p_block )
    {
        if( p_block->i_flags & (BLOCK_FLAG_DISCONTINUITY | BLOCK_FLAG_CORRUPTED) )
        {

            block_t *p_drain = PacketizeBlock( p_dec, ((void*)0) );
            if(p_drain)
                return p_drain;

            PacketizeFlush( p_dec );

            if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
            {
                block_Release( p_block );
                return ((void*)0);
            }
        }

        block_BytestreamPush( &p_sys->bytestream, p_block );
    }

    while( 1 )
    {
        switch( p_sys->i_state )
        {
        case 130:
            while( block_PeekBytes( &p_sys->bytestream, p_header, 2 )
                   == VLC_SUCCESS )
            {
                if( p_header[0] == 0x0b && p_header[1] == 0x77 )
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
            p_sys->i_state = 132;


        case 132:

            if( block_PeekBytes( &p_sys->bytestream, p_header,
                                 VLC_A52_MIN_HEADER_SIZE ) != VLC_SUCCESS )
            {

                return ((void*)0);
            }


            if( vlc_a52_header_Parse( &p_sys->frame, p_header,
                                      VLC_A52_MIN_HEADER_SIZE ) != VLC_SUCCESS )
            {
                msg_Dbg( p_dec, "emulated sync word" );
                block_SkipByte( &p_sys->bytestream );
                p_sys->i_state = 130;
                break;
            }

            if( p_sys->frame.b_eac3 && p_sys->frame.bs.eac3.strmtyp == EAC3_STRMTYP_DEPENDENT )
            {
                msg_Warn( p_dec, "starting with dependent stream, skip it" );
                p_sys->i_state = 130;
                if( block_SkipBytes( &p_sys->bytestream,
                                     p_sys->frame.i_size ) != VLC_SUCCESS )
                    return ((void*)0);
                break;
            }

            p_sys->i_input_size = p_sys->frame.i_size;
            p_sys->i_state = 131;


        case 131:

            if( block_PeekOffsetBytes( &p_sys->bytestream, p_sys->i_input_size,
                                       p_header, VLC_A52_MIN_HEADER_SIZE )
                                       != VLC_SUCCESS )
            {
                if( p_block == ((void*)0) )
                {
                    p_sys->i_state = 133;
                    break;
                }

                return ((void*)0);
            }

            if( p_header[0] == 0 || p_header[1] == 0 )
            {

                p_sys->i_state = 133;
                break;
            }

            if( p_header[0] != 0x0b || p_header[1] != 0x77 )
            {
                msg_Dbg( p_dec, "emulated sync word "
                         "(no sync on following frame)" );
                p_sys->i_state = 130;
                block_SkipByte( &p_sys->bytestream );
                break;
            }

            vlc_a52_header_t a52;
            if( !vlc_a52_header_Parse( &a52, p_header, VLC_A52_MIN_HEADER_SIZE )
             && a52.b_eac3 && a52.bs.eac3.strmtyp == EAC3_STRMTYP_DEPENDENT )
            {
                p_sys->i_input_size += a52.i_size;
                p_dec->fmt_out.i_codec = VLC_CODEC_A52;
                p_dec->fmt_out.i_profile = VLC_A52_PROFILE_EAC3_DEPENDENT;
            }

            p_sys->i_state = 133;
            break;

        case 133:

            if( block_WaitBytes( &p_sys->bytestream,
                                 p_sys->i_input_size ) != VLC_SUCCESS )
            {

                return ((void*)0);
            }
            p_sys->i_state = 129;


        case 129:
            if( !(p_out_buffer = GetOutBuffer( p_dec )) )
            {
                return ((void*)0);
            }



            block_GetBytes( &p_sys->bytestream, p_out_buffer->p_buffer,
                            p_out_buffer->i_buffer );

            p_sys->i_state = 130;

            if( p_out_buffer->i_dts == VLC_TICK_INVALID )
            {
                block_Release( p_out_buffer );
                return ((void*)0);
            }

            if( p_sys->b_discontuinity )
            {
                p_out_buffer->i_flags |= BLOCK_FLAG_DISCONTINUITY;
                p_sys->b_discontuinity = 0;
            }


            if( pp_block )
                *pp_block = block_BytestreamPop( &p_sys->bytestream );

            return p_out_buffer;
        }
    }
}
