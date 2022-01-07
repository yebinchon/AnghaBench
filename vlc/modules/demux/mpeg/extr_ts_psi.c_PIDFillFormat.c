
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ts_transport_type_t ;
struct TYPE_8__ {int p_sections_proc; TYPE_1__* p_es; } ;
typedef TYPE_2__ ts_stream_t ;
struct TYPE_9__ {void* i_original_fourcc; } ;
typedef TYPE_3__ es_format_t ;
typedef int demux_t ;
struct TYPE_7__ {TYPE_3__ fmt; } ;


 int AUDIO_ES ;
 int SCTE27_Section_Callback ;
 int SPU_ES ;
 int TS_TRANSPORT_SECTIONS ;
 int UNKNOWN_ES ;
 int VIDEO_ES ;
 void* VLC_CODEC_A52 ;
 void* VLC_CODEC_CAVS ;
 void* VLC_CODEC_DTS ;
 void* VLC_CODEC_EAC3 ;
 void* VLC_CODEC_H264 ;
 void* VLC_CODEC_HEVC ;
 void* VLC_CODEC_MP1V ;
 void* VLC_CODEC_MP4A ;
 void* VLC_CODEC_MP4V ;
 void* VLC_CODEC_MPGA ;
 void* VLC_CODEC_MPGV ;
 void* VLC_CODEC_SCTE_27 ;
 void* VLC_CODEC_SDDS ;
 void* VLC_FOURCC (char,char,char,char) ;
 int es_format_Change (TYPE_3__*,int ,void*) ;
 int ts_sections_processor_Add (int *,int *,int,int,int ,TYPE_2__*) ;

__attribute__((used)) static void PIDFillFormat( demux_t *p_demux, ts_stream_t *p_pes,
                           int i_stream_type, ts_transport_type_t *p_datatype )
{
    es_format_t *fmt = &p_pes->p_es->fmt;
    switch( i_stream_type )
    {
    case 0x01:
        es_format_Change( fmt, VIDEO_ES, VLC_CODEC_MPGV );
        fmt->i_original_fourcc = VLC_CODEC_MP1V;
        break;
    case 0x02:
    case 0x80:
        es_format_Change( fmt, VIDEO_ES, VLC_CODEC_MPGV );
        break;
    case 0x03:
    case 0x04:
        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_MPGA );
        break;
    case 0x0f:
        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_MP4A );
        fmt->i_original_fourcc = VLC_FOURCC('A','D','T','S');
        break;
    case 0x10:
        es_format_Change( fmt, VIDEO_ES, VLC_CODEC_MP4V );
        break;
    case 0x11:
        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_MP4A );
        fmt->i_original_fourcc = VLC_FOURCC('L','A','T','M');
        break;
    case 0x1B:
        es_format_Change( fmt, VIDEO_ES, VLC_CODEC_H264 );
        break;
    case 0x1C:

        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_MP4A );
        break;
    case 0x24:
        es_format_Change( fmt, VIDEO_ES, VLC_CODEC_HEVC );
        break;
    case 0x42:
        es_format_Change( fmt, VIDEO_ES, VLC_CODEC_CAVS );
        break;

    case 0x81:
        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_A52 );
        break;
    case 0x82:
        es_format_Change( fmt, SPU_ES, VLC_CODEC_SCTE_27 );
        *p_datatype = TS_TRANSPORT_SECTIONS;
        ts_sections_processor_Add( p_demux, &p_pes->p_sections_proc, 0xC6, 0x00,
                                   SCTE27_Section_Callback, p_pes );
        break;
    case 0x84:
        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_SDDS );
        break;
    case 0x85:
        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_DTS );
        break;
    case 0x87:
        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_EAC3 );
        break;
    case 0x8a:
        es_format_Change( fmt, AUDIO_ES, VLC_CODEC_DTS );
        break;
    case 0x91:
        es_format_Change( fmt, AUDIO_ES, VLC_FOURCC( 'a', '5', '2', 'b' ) );
        break;
    case 0x92:
        es_format_Change( fmt, SPU_ES, VLC_FOURCC( 's', 'p', 'u', 'b' ) );
        break;

    case 0x94:
        es_format_Change( fmt, AUDIO_ES, VLC_FOURCC( 's', 'd', 'd', 'b' ) );
        break;

    case 0xa0:
        es_format_Change( fmt, UNKNOWN_ES, 0 );
        break;

    case 0x06:
    case 0x12:
    case 0xEA:
    default:
        es_format_Change( fmt, UNKNOWN_ES, 0 );
        break;
    }
}
