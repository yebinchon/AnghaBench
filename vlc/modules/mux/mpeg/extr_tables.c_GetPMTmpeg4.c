
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_14__ {TYPE_3__* fmt; TYPE_2__* ts; TYPE_1__* pes; } ;
typedef TYPE_4__ pes_mapped_stream_t ;
typedef int dvbpsi_pmt_t ;
struct TYPE_15__ {int i_data; int p_data; } ;
typedef TYPE_5__ bits_buffer_t ;
struct TYPE_13__ {scalar_t__ i_codec; scalar_t__ i_extra; scalar_t__ p_extra; } ;
struct TYPE_12__ {int i_stream_type; } ;
struct TYPE_11__ {int i_stream_id; int i_es_id; } ;


 int GetDescriptorLength24b (int) ;
 int Mpeg4SUBTDecoderSpecific_55 (TYPE_5__*) ;
 scalar_t__ VLC_CODEC_SUBT ;
 int bits_align (TYPE_5__*) ;
 int bits_initwrite (TYPE_5__*,int,int*) ;
 int bits_write (TYPE_5__*,int,int) ;
 int dvbpsi_pmt_descriptor_add (int *,int,int,int ) ;
 int memset (int*,int ,int) ;
 int msg_Err (int *,char*) ;

__attribute__((used)) static void GetPMTmpeg4( vlc_object_t *p_object, dvbpsi_pmt_t *p_dvbpmt,
                         unsigned i_mapped_streams, const pes_mapped_stream_t *p_mapped_streams )
{
    uint8_t iod[4096];
    bits_buffer_t bits, bits_fix_IOD;




    memset( iod, 0, 4096 );

    bits_initwrite( &bits, 4096, iod );

    bits_write( &bits, 8, 0x11 );

    bits_write( &bits, 8, 0x01 );

    bits_align( &bits );
    bits_write( &bits, 8, 0x02 );
    bits_fix_IOD = bits;
    bits_write( &bits, 24,
        GetDescriptorLength24b( 0 ) );
    bits_write( &bits, 10, 0x01 );
    bits_write( &bits, 1, 0x00 );
    bits_write( &bits, 1, 0x00 );
    bits_write( &bits, 4, 0x0f );
    bits_write( &bits, 8, 0xff );
    bits_write( &bits, 8, 0xff );
    bits_write( &bits, 8, 0xfe );
    bits_write( &bits, 8, 0xfe );
    bits_write( &bits, 8, 0xff );
    for (unsigned i = 0; i < i_mapped_streams; i++ )
    {
        const pes_mapped_stream_t *p_stream = &p_mapped_streams[i];

        if( p_stream->pes->i_stream_id != 0xfa && p_stream->pes->i_stream_id != 0xfb &&
            p_stream->pes->i_stream_id != 0xfe )
            continue;

        bits_buffer_t bits_fix_ESDescr, bits_fix_Decoder;

        bits_align( &bits );
        bits_write( &bits, 8, 0x03 );
        bits_fix_ESDescr = bits;
        bits_write( &bits, 24,
                    GetDescriptorLength24b( 0 ) );
        bits_write( &bits, 16, p_stream->pes->i_es_id );
        bits_write( &bits, 1, 0x00 );
        bits_write( &bits, 1, 0x00 );
        bits_write( &bits, 1, 0x00 );
        bits_write( &bits, 5, 0x1f );


        bits_align( &bits );
        bits_write( &bits, 8, 0x04 );
        bits_fix_Decoder = bits;
        bits_write( &bits, 24, GetDescriptorLength24b( 0 ) );
        if( p_stream->ts->i_stream_type == 0x10 )
        {
            bits_write( &bits, 8, 0x20 );
            bits_write( &bits, 6, 0x04 );
        }
        else if( p_stream->ts->i_stream_type == 0x1b )
        {
            bits_write( &bits, 8, 0x21 );
            bits_write( &bits, 6, 0x04 );
        }
        else if( p_stream->ts->i_stream_type == 0x11 ||
                 p_stream->ts->i_stream_type == 0x0f )
        {
            bits_write( &bits, 8, 0x40 );
            bits_write( &bits, 6, 0x05 );
        }
        else if( p_stream->ts->i_stream_type == 0x12 &&
                 p_stream->fmt->i_codec == VLC_CODEC_SUBT )
        {
            bits_write( &bits, 8, 0x0B );
            bits_write( &bits, 6, 0x04 );
        }
        else
        {
            bits_write( &bits, 8, 0x00 );
            bits_write( &bits, 6, 0x00 );

            msg_Err( p_object, "Unsupported stream_type => broken IOD" );
        }
        bits_write( &bits, 1, 0x00 );
        bits_write( &bits, 1, 0x01 );
        bits_write( &bits, 24, 1024 * 1024 );
        bits_write( &bits, 32, 0x7fffffff );
        bits_write( &bits, 32, 0 );


        if( p_stream->fmt->i_codec == VLC_CODEC_SUBT )
        {
            bits_align( &bits );
            bits_write( &bits, 8, 0x05 );
            bits_write( &bits, 24, 55 );

            Mpeg4SUBTDecoderSpecific_55( &bits );
        }
        else if( p_stream->fmt->i_extra > 0 )
        {

            bits_align( &bits );
            bits_write( &bits, 8, 0x05 );
            bits_write( &bits, 24, GetDescriptorLength24b(
                        p_stream->fmt->i_extra ) );
            for (int j = 0; j < p_stream->fmt->i_extra; j++ )
            {
                bits_write( &bits, 8,
                    ((uint8_t*)p_stream->fmt->p_extra)[j] );
            }
        }


        bits_write( &bits_fix_Decoder, 24,
                    GetDescriptorLength24b( bits.i_data -
                    bits_fix_Decoder.i_data - 3 ) );


        bits_align( &bits );
        bits_write( &bits, 8, 0x06 );
        bits_write( &bits, 24, GetDescriptorLength24b( 8 ) );
        bits_write( &bits, 8, 0x01 );
        bits_write( &bits, 1, 0 );
        bits_write( &bits, 32, 0 );
        bits_write( &bits, 8, 0 );
        bits_write( &bits, 8, 0 );
        bits_align( &bits );


        bits_write( &bits_fix_ESDescr, 24,
                    GetDescriptorLength24b( bits.i_data -
                    bits_fix_ESDescr.i_data - 3 ) );
    }
    bits_align( &bits );

    bits_write( &bits_fix_IOD, 24,
                GetDescriptorLength24b(bits.i_data - bits_fix_IOD.i_data - 3 ));

    dvbpsi_pmt_descriptor_add(&p_dvbpmt[0], 0x1d, bits.i_data, bits.p_data);
}
