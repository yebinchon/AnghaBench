
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fmt; } ;
typedef TYPE_1__ ts_es_t ;
typedef int dvbpsi_pmt_es_t ;
typedef int demux_t ;


 int PMTEsHasRegistration (int *,int const*,char*) ;
 int VIDEO_ES ;
 int VLC_CODEC_DIRAC ;
 int es_format_Change (int *,int ,int ) ;
 int msg_Err (int *,char*) ;

__attribute__((used)) static void PMTSetupEs0xD1( demux_t *p_demux, ts_es_t *p_es,
                           const dvbpsi_pmt_es_t *p_dvbpsies )
{

    if( !PMTEsHasRegistration( p_demux, p_dvbpsies, "drac" ) )
    {
        msg_Err( p_demux, "Registration descriptor not found or invalid" );
        return;
    }



    es_format_Change( &p_es->fmt, VIDEO_ES, VLC_CODEC_DIRAC );
}
