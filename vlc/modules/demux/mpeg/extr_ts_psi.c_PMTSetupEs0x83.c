
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fmt; } ;
typedef TYPE_1__ ts_es_t ;
struct TYPE_6__ {int i_program_number; int i_pcr_pid; } ;
typedef TYPE_2__ dvbpsi_pmt_t ;


 int AUDIO_ES ;
 int VLC_CODEC_DVD_LPCM ;
 int VLC_CODEC_WIDI_LPCM ;
 int es_format_Change (int *,int ,int ) ;

__attribute__((used)) static void PMTSetupEs0x83( const dvbpsi_pmt_t *p_pmt, ts_es_t *p_es, int i_pid )
{


    if ( p_pmt->i_program_number == 0x1 &&
         p_pmt->i_pcr_pid == 0x1000 &&
        ( i_pid >> 8 ) == 0x11 )
    {

        es_format_Change( &p_es->fmt, AUDIO_ES, VLC_CODEC_WIDI_LPCM );
    }
    else
        es_format_Change( &p_es->fmt, AUDIO_ES, VLC_CODEC_DVD_LPCM );
}
