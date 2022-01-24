#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
struct TYPE_14__ {TYPE_3__* fmt; TYPE_2__* ts; TYPE_1__* pes; } ;
typedef  TYPE_4__ pes_mapped_stream_t ;
typedef  int /*<<< orphan*/  dvbpsi_pmt_t ;
struct TYPE_15__ {int i_data; int /*<<< orphan*/  p_data; } ;
typedef  TYPE_5__ bits_buffer_t ;
struct TYPE_13__ {scalar_t__ i_codec; scalar_t__ i_extra; scalar_t__ p_extra; } ;
struct TYPE_12__ {int i_stream_type; } ;
struct TYPE_11__ {int i_stream_id; int i_es_id; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ VLC_CODEC_SUBT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8( vlc_object_t *p_object, dvbpsi_pmt_t *p_dvbpmt,
                         unsigned i_mapped_streams, const pes_mapped_stream_t *p_mapped_streams )
{
    uint8_t iod[4096];
    bits_buffer_t bits, bits_fix_IOD;

    /* Make valgrind happy : it works at byte level not bit one so
     * bit_write confuse it (but DON'T CHANGE the way that bit_write is
     * working (needed when fixing some bits) */
    FUNC6( iod, 0, 4096 );

    FUNC3( &bits, 4096, iod );
    /* IOD_label_scope */
    FUNC4( &bits, 8,   0x11 );
    /* IOD_label */
    FUNC4( &bits, 8,   0x01 );
    /* InitialObjectDescriptor */
    FUNC2( &bits );
    FUNC4( &bits, 8,   0x02 );     /* tag */
    bits_fix_IOD = bits;    /* save states to fix length later */
    FUNC4( &bits, 24,
        FUNC0( 0 ) );  /* variable length (fixed later) */
    FUNC4( &bits, 10,  0x01 );     /* ObjectDescriptorID */
    FUNC4( &bits, 1,   0x00 );     /* URL Flag */
    FUNC4( &bits, 1,   0x00 );     /* includeInlineProfileLevelFlag */
    FUNC4( &bits, 4,   0x0f );     /* reserved */
    FUNC4( &bits, 8,   0xff );     /* ODProfile (no ODcapability ) */
    FUNC4( &bits, 8,   0xff );     /* sceneProfile */
    FUNC4( &bits, 8,   0xfe );     /* audioProfile (unspecified) */
    FUNC4( &bits, 8,   0xfe );     /* visualProfile( // ) */
    FUNC4( &bits, 8,   0xff );     /* graphicProfile (no ) */
    for (unsigned i = 0; i < i_mapped_streams; i++ )
    {
        const pes_mapped_stream_t *p_stream = &p_mapped_streams[i];

        if( p_stream->pes->i_stream_id != 0xfa && p_stream->pes->i_stream_id != 0xfb &&
            p_stream->pes->i_stream_id != 0xfe )
            continue;

        bits_buffer_t bits_fix_ESDescr, bits_fix_Decoder;
        /* ES descriptor */
        FUNC2( &bits );
        FUNC4( &bits, 8,   0x03 );     /* ES_DescrTag */
        bits_fix_ESDescr = bits;
        FUNC4( &bits, 24,
                    FUNC0( 0 ) ); /* variable size */
        FUNC4( &bits, 16,  p_stream->pes->i_es_id );
        FUNC4( &bits, 1,   0x00 );     /* streamDependency */
        FUNC4( &bits, 1,   0x00 );     /* URL Flag */
        FUNC4( &bits, 1,   0x00 );     /* OCRStreamFlag */
        FUNC4( &bits, 5,   0x1f );     /* streamPriority */

        /* DecoderConfigDesciptor */
        FUNC2( &bits );
        FUNC4( &bits, 8,   0x04 ); /* DecoderConfigDescrTag */
        bits_fix_Decoder = bits;
        FUNC4( &bits, 24,  FUNC0( 0 ) );
        if( p_stream->ts->i_stream_type == 0x10 )
        {
            FUNC4( &bits, 8, 0x20 );   /* Visual 14496-2 */
            FUNC4( &bits, 6, 0x04 );   /* VisualStream */
        }
        else if( p_stream->ts->i_stream_type == 0x1b )
        {
            FUNC4( &bits, 8, 0x21 );   /* Visual 14496-2 */
            FUNC4( &bits, 6, 0x04 );   /* VisualStream */
        }
        else if( p_stream->ts->i_stream_type == 0x11 ||
                 p_stream->ts->i_stream_type == 0x0f )
        {
            FUNC4( &bits, 8, 0x40 );   /* Audio 14496-3 */
            FUNC4( &bits, 6, 0x05 );   /* AudioStream */
        }
        else if( p_stream->ts->i_stream_type == 0x12 &&
                 p_stream->fmt->i_codec == VLC_CODEC_SUBT )
        {
            FUNC4( &bits, 8, 0x0B );   /* Text Stream */
            FUNC4( &bits, 6, 0x04 );   /* VisualStream */
        }
        else
        {
            FUNC4( &bits, 8, 0x00 );
            FUNC4( &bits, 6, 0x00 );

            FUNC7( p_object, "Unsupported stream_type => broken IOD" );
        }
        FUNC4( &bits, 1,   0x00 );         /* UpStream */
        FUNC4( &bits, 1,   0x01 );         /* reserved */
        FUNC4( &bits, 24,  1024 * 1024 );  /* bufferSizeDB */
        FUNC4( &bits, 32,  0x7fffffff );   /* maxBitrate */
        FUNC4( &bits, 32,  0 );            /* avgBitrate */

        /* DecoderSpecificInfo */
        if( p_stream->fmt->i_codec == VLC_CODEC_SUBT )
        {
            FUNC2( &bits );
            FUNC4( &bits, 8,   0x05 ); /* tag */
            FUNC4( &bits, 24,  55 );
            /* Create decoder specific info for subt */
            FUNC1( &bits );
        }
        else if( p_stream->fmt->i_extra > 0 )
        {
            /* DecoderSpecificInfo */
            FUNC2( &bits );
            FUNC4( &bits, 8,   0x05 ); /* tag */
            FUNC4( &bits, 24, FUNC0(
                        p_stream->fmt->i_extra ) );
            for (int j = 0; j < p_stream->fmt->i_extra; j++ )
            {
                FUNC4( &bits, 8,
                    ((uint8_t*)p_stream->fmt->p_extra)[j] );
            }
        }

        /* fix Decoder length */
        FUNC4( &bits_fix_Decoder, 24,
                    FUNC0( bits.i_data -
                    bits_fix_Decoder.i_data - 3 ) );

        /* SLConfigDescriptor : predefined (0x01) */
        FUNC2( &bits );
        FUNC4( &bits, 8,   0x06 ); /* tag */
        FUNC4( &bits, 24,  FUNC0( 8 ) );
        FUNC4( &bits, 8,   0x01 );/* predefined */
        FUNC4( &bits, 1,   0 );   /* durationFlag */
        FUNC4( &bits, 32,  0 );   /* OCRResolution */
        FUNC4( &bits, 8,   0 );   /* OCRLength */
        FUNC4( &bits, 8,   0 );   /* InstantBitrateLength */
        FUNC2( &bits );

        /* fix ESDescr length */
        FUNC4( &bits_fix_ESDescr, 24,
                    FUNC0( bits.i_data -
                    bits_fix_ESDescr.i_data - 3 ) );
    }
    FUNC2( &bits );
    /* fix IOD length */
    FUNC4( &bits_fix_IOD, 24,
                FUNC0(bits.i_data - bits_fix_IOD.i_data - 3 ));

    FUNC5(&p_dvbpmt[0], 0x1d, bits.i_data, bits.p_data);
}