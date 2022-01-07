
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_7__ {int i_cat; int i_codec; } ;
typedef TYPE_1__ es_format_t ;
struct TYPE_8__ {int i_data; } ;
typedef TYPE_2__ bits_buffer_t ;





 int PES_EXTENDED_STREAM_ID ;


 int PES_PAYLOAD_SIZE_MAX ;
 int PES_PRIVATE_STREAM_1 ;



 int VIDEO_ES ;
 int VLC_CODEC_MP1V ;
 int VLC_CODEC_MP2V ;
 int VLC_CODEC_MPGV ;
 int bits_align (TYPE_2__*) ;
 int bits_initwrite (TYPE_2__*,int,int *) ;
 int bits_write (TYPE_2__*,int,int) ;

__attribute__((used)) static inline int PESHeader( uint8_t *p_hdr, int64_t i_pts, int64_t i_dts,
                             int i_es_size, const es_format_t *p_fmt,
                             int i_stream_id, bool b_mpeg2,
                             bool b_data_alignment, int i_header_size )
{
    bits_buffer_t bits;
    int i_extra = 0;
    int i_private_id = -1;
    int i_stream_id_extension = 0;


    if( ( i_stream_id >> 8 ) == PES_PRIVATE_STREAM_1 )
    {
        i_private_id = i_stream_id & 0xff;
        i_stream_id = PES_PRIVATE_STREAM_1;



        i_extra = 1;
        if( ( i_private_id & 0xf0 ) == 0x80 )
            i_extra += 3;
    }
    else if( ( i_stream_id >> 8 ) == PES_EXTENDED_STREAM_ID )
    {



        i_stream_id_extension = i_stream_id & 0x7f;
        i_stream_id = PES_EXTENDED_STREAM_ID;
    }

    bits_initwrite( &bits, 50, p_hdr );


    bits_write( &bits, 24, 0x01 );
    bits_write( &bits, 8, i_stream_id );
    switch( i_stream_id )
    {
        case 128:
        case 131:
        case 130:
        case 134:
        case 133:
        case 129:
        case 135:
        case 132:

            bits_write( &bits, 16, i_es_size );
            bits_align( &bits );
            return( bits.i_data );

        default:

            if( b_mpeg2 )
            {
                int i_pts_dts;
                bool b_pes_extension_flag = 0;

                if( i_pts > 0 && i_dts > 0 &&
                    ( i_pts != i_dts || ( p_fmt->i_cat == VIDEO_ES &&
                      p_fmt->i_codec != VLC_CODEC_MPGV &&
                      p_fmt->i_codec != VLC_CODEC_MP2V &&
                      p_fmt->i_codec != VLC_CODEC_MP1V
                      ) ) )
                {
                    i_pts_dts = 0x03;
                    if ( !i_header_size ) i_header_size = 0xa;
                }
                else if( i_pts > 0 )
                {
                    i_pts_dts = 0x02;
                    if ( !i_header_size ) i_header_size = 0x5;
                }
                else
                {
                    i_pts_dts = 0x00;
                    if ( !i_header_size ) i_header_size = 0x0;
                }

                if( i_stream_id == PES_EXTENDED_STREAM_ID )
                {
                    b_pes_extension_flag = 1;
                    i_header_size += 1 + 1;
                }

                if( b_pes_extension_flag )
                {
                    i_header_size += 1;
                }



                if( i_es_size > PES_PAYLOAD_SIZE_MAX )
                    bits_write( &bits, 16, 0 );
                else
                    bits_write( &bits, 16, i_es_size + i_extra + 3
                                 + i_header_size );
                bits_write( &bits, 2, 0x02 );
                bits_write( &bits, 2, 0x00 );
                bits_write( &bits, 1, 0x00 );
                bits_write( &bits, 1, b_data_alignment );
                bits_write( &bits, 1, 0x00 );
                bits_write( &bits, 1, 0x00 );

                bits_write( &bits, 2, i_pts_dts );
                bits_write( &bits, 1, 0x00 );
                bits_write( &bits, 1, 0x00 );
                bits_write( &bits, 1, 0x00 );
                bits_write( &bits, 1, 0x00 );
                bits_write( &bits, 1, 0x00 );
                bits_write( &bits, 1, b_pes_extension_flag );
                bits_write( &bits, 8, i_header_size );


                if( i_pts_dts & 0x02 )
                {
                    bits_write( &bits, 4, i_pts_dts );
                    bits_write( &bits, 3, i_pts >> 30 );
                    bits_write( &bits, 1, 0x01 );
                    bits_write( &bits, 15, i_pts >> 15 );
                    bits_write( &bits, 1, 0x01 );
                    bits_write( &bits, 15, i_pts );
                    bits_write( &bits, 1, 0x01 );
                    i_header_size -= 0x5;
                }

                if( i_pts_dts & 0x01 )
                {
                    bits_write( &bits, 4, 0x01 );
                    bits_write( &bits, 3, i_dts >> 30 );
                    bits_write( &bits, 1, 0x01 );
                    bits_write( &bits, 15, i_dts >> 15 );
                    bits_write( &bits, 1, 0x01 );
                    bits_write( &bits, 15, i_dts );
                    bits_write( &bits, 1, 0x01 );
                    i_header_size -= 0x5;
                }
                if( b_pes_extension_flag )
                {
                    bits_write( &bits, 1, 0x00 );
                    bits_write( &bits, 1, 0x00 );
                    bits_write( &bits, 1, 0x00 );
                    bits_write( &bits, 1, 0x00 );
                    bits_write( &bits, 3, 0x07 );
                    bits_write( &bits, 1, 0x01 );





                    if( i_stream_id == PES_EXTENDED_STREAM_ID )
                    {

                        bits_write( &bits, 1, 0x01 );
                        bits_write( &bits, 7, 0x01 );
                        bits_write( &bits, 1, 0x01 );
                        bits_write( &bits, 7, i_stream_id_extension );
                        i_header_size -= 0x2;
                    }
                    i_header_size -= 0x1;
                }
                while ( i_header_size )
                {
                    bits_write( &bits, 8, 0xff );
                    i_header_size--;
                }
            }
            else
            {
                int i_pts_dts;

                if( i_pts > 0 && i_dts > 0 &&
                    ( i_pts != i_dts || p_fmt->i_cat == VIDEO_ES ) )
                {
                    bits_write( &bits, 16, i_es_size + i_extra + 10 );
                    i_pts_dts = 0x03;
                }
                else if( i_pts > 0 )
                {
                    bits_write( &bits, 16, i_es_size + i_extra + 5 );
                    i_pts_dts = 0x02;
                }
                else
                {
                    bits_write( &bits, 16, i_es_size + i_extra + 1 );
                    i_pts_dts = 0x00;
                }






                if( i_pts_dts & 0x02 )
                {
                    bits_write( &bits, 4, i_pts_dts );
                    bits_write( &bits, 3, i_pts >> 30 );
                    bits_write( &bits, 1, 0x01 );
                    bits_write( &bits, 15, i_pts >> 15 );
                    bits_write( &bits, 1, 0x01 );
                    bits_write( &bits, 15, i_pts );
                    bits_write( &bits, 1, 0x01 );
                }

                if( i_pts_dts & 0x01 )
                {
                    bits_write( &bits, 4, 0x01 );
                    bits_write( &bits, 3, i_dts >> 30 );
                    bits_write( &bits, 1, 0x01 );
                    bits_write( &bits, 15, i_dts >> 15 );
                    bits_write( &bits, 1, 0x01 );
                    bits_write( &bits, 15, i_dts );
                    bits_write( &bits, 1, 0x01 );
                }
                if( !i_pts_dts )
                {
                    bits_write( &bits, 8, 0x0F );
                }

            }




            bits_align( &bits );
            if( i_stream_id == PES_PRIVATE_STREAM_1 && i_private_id != -1 )
            {
                bits_write( &bits, 8, i_private_id );
                if( ( i_private_id&0xf0 ) == 0x80 )
                {
                    bits_write( &bits, 24, 0 );
                }
            }
            bits_align( &bits );
            return( bits.i_data );
    }
}
