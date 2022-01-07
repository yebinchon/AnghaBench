
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int i_profile; } ;
struct TYPE_7__ {TYPE_2__ fmt; } ;
typedef TYPE_1__ ts_es_t ;
typedef TYPE_2__ es_format_t ;
struct TYPE_9__ {int i_type; int i_pid; } ;
typedef TYPE_3__ dvbpsi_pmt_es_t ;
typedef int demux_t ;


 int AUDIO_ES ;
 int PROFILE_DTS_HD ;
 int SPU_ES ;
 int VIDEO_ES ;
 int VLC_CODEC_A52 ;
 int VLC_CODEC_BD_LPCM ;
 int VLC_CODEC_BD_PG ;
 int VLC_CODEC_BD_TEXT ;
 int VLC_CODEC_DTS ;
 int VLC_CODEC_EAC3 ;
 int VLC_CODEC_TRUEHD ;
 int VLC_CODEC_VC1 ;
 int es_format_Change (TYPE_2__*,int ,int ) ;
 int msg_Info (int *,char*,int ,int) ;

__attribute__((used)) static bool PMTSetupEsHDMV( demux_t *p_demux, ts_es_t *p_es,
                            const dvbpsi_pmt_es_t *p_dvbpsies )
{
    es_format_t *p_fmt = &p_es->fmt;


    switch( p_dvbpsies->i_type )
    {
    case 0x80:
        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_BD_LPCM );
        break;
    case 0x81:
        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_A52 );
        break;
    case 0x85:
    case 0x86:
        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_DTS );
        p_fmt->i_profile = PROFILE_DTS_HD;
        break;
    case 0x82:
    case 0xA2:
        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_DTS );
        break;

    case 0x83:
        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_TRUEHD );
        break;

    case 0x84:
    case 0xA1:
        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_EAC3 );
        break;
    case 0x90:
        es_format_Change( p_fmt, SPU_ES, VLC_CODEC_BD_PG );
        break;
    case 0x91:
        return 0;
    case 0x92:
        es_format_Change( p_fmt, SPU_ES, VLC_CODEC_BD_TEXT );
        break;
    case 0xEA:
        es_format_Change( p_fmt, VIDEO_ES, VLC_CODEC_VC1 );
        break;
    default:
        msg_Info( p_demux, "HDMV registration not implemented for pid 0x%x type 0x%x",
                  p_dvbpsies->i_pid, p_dvbpsies->i_type );
        return 0;
    }
    return 1;
}
