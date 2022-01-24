#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_32__ {TYPE_1__* p_es; } ;
typedef  TYPE_3__ ts_stream_t ;
struct TYPE_33__ {int b_packetized; scalar_t__ i_cat; void* psz_description; void* psz_language; int /*<<< orphan*/  i_profile; } ;
typedef  TYPE_4__ es_format_t ;
struct TYPE_34__ {int i_subtitles_number; TYPE_2__* p_subtitle; } ;
typedef  TYPE_5__ dvbpsi_subtitling_dr_t ;
struct TYPE_35__ {int /*<<< orphan*/  i_component_tag; } ;
typedef  TYPE_6__ dvbpsi_stream_identifier_dr_t ;
typedef  int /*<<< orphan*/  dvbpsi_pmt_es_t ;
struct TYPE_36__ {int i_length; int* p_data; } ;
typedef  TYPE_7__ dvbpsi_descriptor_t ;
struct TYPE_37__ {TYPE_9__* p_sys; } ;
typedef  TYPE_8__ demux_t ;
struct TYPE_38__ {scalar_t__ standard; } ;
typedef  TYPE_9__ demux_sys_t ;
struct TYPE_31__ {int i_subtitling_type; } ;
struct TYPE_30__ {TYPE_4__ fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int*,int,TYPE_4__*) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int,int) ; 
 scalar_t__ FUNC4 (TYPE_8__*,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,TYPE_3__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  PROFILE_DTS_HD ; 
 int /*<<< orphan*/  SPU_ES ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,TYPE_7__*,TYPE_4__*) ; 
 scalar_t__ TS_STANDARD_ARIB ; 
 scalar_t__ UNKNOWN_ES ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_302M ; 
 int /*<<< orphan*/  VLC_CODEC_A52 ; 
 int /*<<< orphan*/  VLC_CODEC_ARIB_A ; 
 int /*<<< orphan*/  VLC_CODEC_ARIB_C ; 
 int /*<<< orphan*/  VLC_CODEC_DTS ; 
 int /*<<< orphan*/  VLC_CODEC_EAC3 ; 
 int /*<<< orphan*/  VLC_CODEC_HEVC ; 
 int /*<<< orphan*/  VLC_CODEC_TTML_TS ; 
 int /*<<< orphan*/  FUNC8 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_6__* FUNC10 (TYPE_7__*) ; 
 TYPE_5__* FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,char*,int) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 void* FUNC16 (char*,int) ; 

__attribute__((used)) static void FUNC17( demux_t *p_demux, ts_stream_t *p_pes,
                            const dvbpsi_pmt_es_t *p_dvbpsies )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    es_format_t *p_fmt = &p_pes->p_es->fmt;
    dvbpsi_descriptor_t *p_subs_dr = FUNC2( p_dvbpsies, 0x59 );
    dvbpsi_descriptor_t *desc;
    if( FUNC4( p_demux, p_dvbpsies, "EAC3" ) ||
        FUNC2( p_dvbpsies, 0x7a ) )
    {
        /* DVB with stream_type 0x06 (ETS EN 300 468) */
        FUNC12( p_fmt, AUDIO_ES, VLC_CODEC_EAC3 );
    }
    else if( FUNC4( p_demux, p_dvbpsies, "AC-3" ) ||
             FUNC2( p_dvbpsies, 0x6a ) ||
             FUNC2( p_dvbpsies, 0x81 ) ) /* AC-3 channel (also in EAC3) */
    {
        FUNC12( p_fmt, AUDIO_ES, VLC_CODEC_A52 );
    }
    else if( FUNC4( p_demux, p_dvbpsies, "DTS1" ) || /* 512 Bpf */
             FUNC4( p_demux, p_dvbpsies, "DTS2" ) || /* 1024 Bpf */
             FUNC4( p_demux, p_dvbpsies, "DTS3" ) || /* 2048 Bpf */
             FUNC2( p_dvbpsies, 0x73 ) )
    {
        /*registration descriptor(ETSI TS 101 154 Annex F)*/
        FUNC12( p_fmt, AUDIO_ES, VLC_CODEC_DTS );
    }
    else if( FUNC4( p_demux, p_dvbpsies, "BSSD" ) && !p_subs_dr )
    {
        /* BSSD is AES3 DATA, but could also be subtitles
         * we need to check for secondary descriptor then s*/
        FUNC12( p_fmt, AUDIO_ES, VLC_CODEC_302M );
        p_fmt->b_packetized = true;
    }
    else if( FUNC4( p_demux, p_dvbpsies, "HEVC" ) )
    {
        FUNC12( p_fmt, VIDEO_ES, VLC_CODEC_HEVC );
    }
    else if( (desc = FUNC2( p_dvbpsies, 0x7f )) &&
             desc->i_length >= 2 )
    {
        /* extended_descriptor on PMT (DVB Bluebook A038) */
        switch( desc->p_data[0] )
        {
            case 0x80: /* User Defined */
                 /* non finalized Opus in TS Draft. Can't really tell...
                  * So ffmpeg produced mixes with System-A reg */
                if( FUNC4(p_demux, p_dvbpsies, "Opus") )
                    FUNC1(p_demux, desc->p_data, desc->i_length, p_fmt);
                break;
            case 0x0E: /* DTS HD */
                FUNC12( p_fmt, AUDIO_ES, VLC_CODEC_DTS );
                p_fmt->i_profile = PROFILE_DTS_HD;
                break;
            case 0x0F: /* DTS Neural */
                FUNC12( p_fmt, AUDIO_ES, VLC_CODEC_DTS );
                break;
            case 0x15: /* AC4, unsupported for now */
                FUNC12( p_fmt, AUDIO_ES, FUNC8('A', 'C', '-', '4') );
                break;
            case 0x20:
                FUNC12( p_fmt, SPU_ES, VLC_CODEC_TTML_TS );
                FUNC7( p_demux, desc, p_fmt );
                break;
        }
    }
    else if( p_sys->standard == TS_STANDARD_ARIB )
    {
        /* Lookup our data component descriptor first ARIB STD B10 6.4 */
        dvbpsi_descriptor_t *p_dr = FUNC2( p_dvbpsies, 0xFD );
        /* and check that it maps to something ARIB STD B14 Table 5.1/5.2 */
        if ( p_dr && p_dr->i_length >= 2 )
        {
            /* See STD-B10 Annex J, table J-1 mappings */
            const uint16_t i_data_component_id = FUNC0(p_dr->p_data);
            if( i_data_component_id == 0x0008 &&
                FUNC3( p_dvbpsies, 0x30, 0x37 ) )
            {
                FUNC12( p_fmt, SPU_ES, VLC_CODEC_ARIB_A );
                p_fmt->psz_language = FUNC16 ( "jpn", 3 );
                p_fmt->psz_description = FUNC15( FUNC9("ARIB subtitles") );
            }
            else if( i_data_component_id == 0x0012 &&
                     FUNC3( p_dvbpsies, 0x87, 0x88 ) )
            {
                FUNC12( p_fmt, SPU_ES, VLC_CODEC_ARIB_C );
                p_fmt->psz_language = FUNC16 ( "jpn", 3 );
                p_fmt->psz_description = FUNC15( FUNC9("ARIB subtitles") );
            }
        }
    }
    else
    {
        /* Subtitle/Teletext/VBI fallbacks */
        dvbpsi_subtitling_dr_t *p_sub;
        if( p_subs_dr && ( p_sub = FUNC11( p_subs_dr ) ) )
        {
            for( int i = 0; i < p_sub->i_subtitles_number; i++ )
            {
                if( p_fmt->i_cat != UNKNOWN_ES )
                    break;

                switch( p_sub->p_subtitle[i].i_subtitling_type )
                {
                case 0x01: /* EBU Teletext subtitles */
                case 0x02: /* Associated EBU Teletext */
                case 0x03: /* VBI data */
                    FUNC6( p_demux, p_pes, p_dvbpsies );
                    break;
                case 0x10: /* DVB Subtitle (normal) with no monitor AR critical */
                case 0x11: /*                 ...   on 4:3 AR monitor */
                case 0x12: /*                 ...   on 16:9 AR monitor */
                case 0x13: /*                 ...   on 2.21:1 AR monitor */
                case 0x14: /*                 ...   for display on a high definition monitor */
                case 0x20: /* DVB Subtitle (impaired) with no monitor AR critical */
                case 0x21: /*                 ...   on 4:3 AR monitor */
                case 0x22: /*                 ...   on 16:9 AR monitor */
                case 0x23: /*                 ...   on 2.21:1 AR monitor */
                case 0x24: /*                 ...   for display on a high definition monitor */
                    FUNC5( p_demux, p_pes, p_dvbpsies );
                    break;
                default:
                    FUNC14( p_demux, "Unrecognized DVB subtitle type (0x%x)",
                             p_sub->p_subtitle[i].i_subtitling_type );
                    break;
                }
            }
        }

        if( p_fmt->i_cat == UNKNOWN_ES &&
            ( FUNC2( p_dvbpsies, 0x45 ) ||  /* VBI Data descriptor */
              FUNC2( p_dvbpsies, 0x46 ) ||  /* VBI Teletext descriptor */
              FUNC2( p_dvbpsies, 0x56 ) ) ) /* EBU Teletext descriptor */
        {
            /* Teletext/VBI */
            FUNC6( p_demux, p_pes, p_dvbpsies );
        }
    }

    /* FIXME is it useful ? */
    if( FUNC2( p_dvbpsies, 0x52 ) )
    {
        dvbpsi_descriptor_t *p_dr = FUNC2( p_dvbpsies, 0x52 );
        dvbpsi_stream_identifier_dr_t *p_si = FUNC10( p_dr );

        FUNC13( p_demux, "    * Stream Component Identifier: %d", p_si->i_component_tag );
    }
}