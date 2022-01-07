
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_32__ {TYPE_1__* p_es; } ;
typedef TYPE_3__ ts_stream_t ;
struct TYPE_33__ {int b_packetized; scalar_t__ i_cat; void* psz_description; void* psz_language; int i_profile; } ;
typedef TYPE_4__ es_format_t ;
struct TYPE_34__ {int i_subtitles_number; TYPE_2__* p_subtitle; } ;
typedef TYPE_5__ dvbpsi_subtitling_dr_t ;
struct TYPE_35__ {int i_component_tag; } ;
typedef TYPE_6__ dvbpsi_stream_identifier_dr_t ;
typedef int dvbpsi_pmt_es_t ;
struct TYPE_36__ {int i_length; int* p_data; } ;
typedef TYPE_7__ dvbpsi_descriptor_t ;
struct TYPE_37__ {TYPE_9__* p_sys; } ;
typedef TYPE_8__ demux_t ;
struct TYPE_38__ {scalar_t__ standard; } ;
typedef TYPE_9__ demux_sys_t ;
struct TYPE_31__ {int i_subtitling_type; } ;
struct TYPE_30__ {TYPE_4__ fmt; } ;


 int AUDIO_ES ;
 int GetWBE (int*) ;
 int OpusSetup (TYPE_8__*,int*,int,TYPE_4__*) ;
 TYPE_7__* PMTEsFindDescriptor (int const*,int) ;
 scalar_t__ PMTEsHasComponentTagBetween (int const*,int,int) ;
 scalar_t__ PMTEsHasRegistration (TYPE_8__*,int const*,char*) ;
 int PMTSetupEsDvbSubtitle (TYPE_8__*,TYPE_3__*,int const*) ;
 int PMTSetupEsTeletext (TYPE_8__*,TYPE_3__*,int const*) ;
 int PROFILE_DTS_HD ;
 int SPU_ES ;
 int SetupTTMLExtendedDescriptor (TYPE_8__*,TYPE_7__*,TYPE_4__*) ;
 scalar_t__ TS_STANDARD_ARIB ;
 scalar_t__ UNKNOWN_ES ;
 int VIDEO_ES ;
 int VLC_CODEC_302M ;
 int VLC_CODEC_A52 ;
 int VLC_CODEC_ARIB_A ;
 int VLC_CODEC_ARIB_C ;
 int VLC_CODEC_DTS ;
 int VLC_CODEC_EAC3 ;
 int VLC_CODEC_HEVC ;
 int VLC_CODEC_TTML_TS ;
 int VLC_FOURCC (char,char,char,char) ;
 int _ (char*) ;
 TYPE_6__* dvbpsi_DecodeStreamIdentifierDr (TYPE_7__*) ;
 TYPE_5__* dvbpsi_DecodeSubtitlingDr (TYPE_7__*) ;
 int es_format_Change (TYPE_4__*,int ,int ) ;
 int msg_Dbg (TYPE_8__*,char*,int ) ;
 int msg_Err (TYPE_8__*,char*,int) ;
 void* strdup (int ) ;
 void* strndup (char*,int) ;

__attribute__((used)) static void PMTSetupEs0x06( demux_t *p_demux, ts_stream_t *p_pes,
                            const dvbpsi_pmt_es_t *p_dvbpsies )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    es_format_t *p_fmt = &p_pes->p_es->fmt;
    dvbpsi_descriptor_t *p_subs_dr = PMTEsFindDescriptor( p_dvbpsies, 0x59 );
    dvbpsi_descriptor_t *desc;
    if( PMTEsHasRegistration( p_demux, p_dvbpsies, "EAC3" ) ||
        PMTEsFindDescriptor( p_dvbpsies, 0x7a ) )
    {

        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_EAC3 );
    }
    else if( PMTEsHasRegistration( p_demux, p_dvbpsies, "AC-3" ) ||
             PMTEsFindDescriptor( p_dvbpsies, 0x6a ) ||
             PMTEsFindDescriptor( p_dvbpsies, 0x81 ) )
    {
        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_A52 );
    }
    else if( PMTEsHasRegistration( p_demux, p_dvbpsies, "DTS1" ) ||
             PMTEsHasRegistration( p_demux, p_dvbpsies, "DTS2" ) ||
             PMTEsHasRegistration( p_demux, p_dvbpsies, "DTS3" ) ||
             PMTEsFindDescriptor( p_dvbpsies, 0x73 ) )
    {

        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_DTS );
    }
    else if( PMTEsHasRegistration( p_demux, p_dvbpsies, "BSSD" ) && !p_subs_dr )
    {


        es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_302M );
        p_fmt->b_packetized = 1;
    }
    else if( PMTEsHasRegistration( p_demux, p_dvbpsies, "HEVC" ) )
    {
        es_format_Change( p_fmt, VIDEO_ES, VLC_CODEC_HEVC );
    }
    else if( (desc = PMTEsFindDescriptor( p_dvbpsies, 0x7f )) &&
             desc->i_length >= 2 )
    {

        switch( desc->p_data[0] )
        {
            case 0x80:


                if( PMTEsHasRegistration(p_demux, p_dvbpsies, "Opus") )
                    OpusSetup(p_demux, desc->p_data, desc->i_length, p_fmt);
                break;
            case 0x0E:
                es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_DTS );
                p_fmt->i_profile = PROFILE_DTS_HD;
                break;
            case 0x0F:
                es_format_Change( p_fmt, AUDIO_ES, VLC_CODEC_DTS );
                break;
            case 0x15:
                es_format_Change( p_fmt, AUDIO_ES, VLC_FOURCC('A', 'C', '-', '4') );
                break;
            case 0x20:
                es_format_Change( p_fmt, SPU_ES, VLC_CODEC_TTML_TS );
                SetupTTMLExtendedDescriptor( p_demux, desc, p_fmt );
                break;
        }
    }
    else if( p_sys->standard == TS_STANDARD_ARIB )
    {

        dvbpsi_descriptor_t *p_dr = PMTEsFindDescriptor( p_dvbpsies, 0xFD );

        if ( p_dr && p_dr->i_length >= 2 )
        {

            const uint16_t i_data_component_id = GetWBE(p_dr->p_data);
            if( i_data_component_id == 0x0008 &&
                PMTEsHasComponentTagBetween( p_dvbpsies, 0x30, 0x37 ) )
            {
                es_format_Change( p_fmt, SPU_ES, VLC_CODEC_ARIB_A );
                p_fmt->psz_language = strndup ( "jpn", 3 );
                p_fmt->psz_description = strdup( _("ARIB subtitles") );
            }
            else if( i_data_component_id == 0x0012 &&
                     PMTEsHasComponentTagBetween( p_dvbpsies, 0x87, 0x88 ) )
            {
                es_format_Change( p_fmt, SPU_ES, VLC_CODEC_ARIB_C );
                p_fmt->psz_language = strndup ( "jpn", 3 );
                p_fmt->psz_description = strdup( _("ARIB subtitles") );
            }
        }
    }
    else
    {

        dvbpsi_subtitling_dr_t *p_sub;
        if( p_subs_dr && ( p_sub = dvbpsi_DecodeSubtitlingDr( p_subs_dr ) ) )
        {
            for( int i = 0; i < p_sub->i_subtitles_number; i++ )
            {
                if( p_fmt->i_cat != UNKNOWN_ES )
                    break;

                switch( p_sub->p_subtitle[i].i_subtitling_type )
                {
                case 0x01:
                case 0x02:
                case 0x03:
                    PMTSetupEsTeletext( p_demux, p_pes, p_dvbpsies );
                    break;
                case 0x10:
                case 0x11:
                case 0x12:
                case 0x13:
                case 0x14:
                case 0x20:
                case 0x21:
                case 0x22:
                case 0x23:
                case 0x24:
                    PMTSetupEsDvbSubtitle( p_demux, p_pes, p_dvbpsies );
                    break;
                default:
                    msg_Err( p_demux, "Unrecognized DVB subtitle type (0x%x)",
                             p_sub->p_subtitle[i].i_subtitling_type );
                    break;
                }
            }
        }

        if( p_fmt->i_cat == UNKNOWN_ES &&
            ( PMTEsFindDescriptor( p_dvbpsies, 0x45 ) ||
              PMTEsFindDescriptor( p_dvbpsies, 0x46 ) ||
              PMTEsFindDescriptor( p_dvbpsies, 0x56 ) ) )
        {

            PMTSetupEsTeletext( p_demux, p_pes, p_dvbpsies );
        }
    }


    if( PMTEsFindDescriptor( p_dvbpsies, 0x52 ) )
    {
        dvbpsi_descriptor_t *p_dr = PMTEsFindDescriptor( p_dvbpsies, 0x52 );
        dvbpsi_stream_identifier_dr_t *p_si = dvbpsi_DecodeStreamIdentifierDr( p_dr );

        msg_Dbg( p_demux, "    * Stream Component Identifier: %d", p_si->i_component_tag );
    }
}
