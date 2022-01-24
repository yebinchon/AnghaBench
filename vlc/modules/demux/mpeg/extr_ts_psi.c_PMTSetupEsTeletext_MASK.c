#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_13__ ;
typedef  struct TYPE_30__   TYPE_12__ ;
typedef  struct TYPE_29__   TYPE_11__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
struct TYPE_34__ {int i_type; int i_magazine; int i_page; scalar_t__ p_iso639; } ;
typedef  TYPE_3__ ts_teletext_page_t ;
struct TYPE_35__ {TYPE_5__* p_es; } ;
typedef  TYPE_4__ ts_stream_t ;
struct TYPE_32__ {int i_magazine; int i_page; } ;
struct TYPE_33__ {TYPE_1__ teletext; } ;
struct TYPE_37__ {int i_extra; int /*<<< orphan*/ * psz_language; int /*<<< orphan*/ * psz_description; TYPE_2__ subs; int /*<<< orphan*/  i_priority; scalar_t__ p_extra; } ;
struct TYPE_36__ {TYPE_6__ fmt; int /*<<< orphan*/  p_program; } ;
typedef  TYPE_5__ ts_es_t ;
typedef  int /*<<< orphan*/  p_page ;
typedef  TYPE_6__ es_format_t ;
typedef  enum txt_pass_s { ____Placeholder_txt_pass_s } txt_pass_s ;
struct TYPE_38__ {int i_teletext_type; int i_teletext_magazine_number; int i_teletext_page_number; int /*<<< orphan*/  i_iso6392_language_code; } ;
typedef  TYPE_7__ dvbpsi_teletextpage_t ;
struct TYPE_39__ {int i_pages_number; TYPE_7__* p_pages; } ;
typedef  TYPE_8__ dvbpsi_teletext_dr_t ;
struct TYPE_40__ {int i_subtitles_number; TYPE_10__* p_subtitle; } ;
typedef  TYPE_9__ dvbpsi_subtitling_dr_t ;
struct TYPE_28__ {int i_subtitling_type; int i_composition_page_id; int /*<<< orphan*/  i_iso6392_language_code; } ;
typedef  TYPE_10__ dvbpsi_subtitle_t ;
typedef  int /*<<< orphan*/  dvbpsi_pmt_es_t ;
struct TYPE_29__ {int i_length; int /*<<< orphan*/  p_data; } ;
typedef  TYPE_11__ dvbpsi_descriptor_t ;
struct TYPE_30__ {TYPE_13__* p_sys; } ;
typedef  TYPE_12__ demux_t ;
struct TYPE_31__ {int /*<<< orphan*/  b_split_es; } ;
typedef  TYPE_13__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ES_PRIORITY_NOT_DEFAULTABLE ; 
 int /*<<< orphan*/  ES_PRIORITY_SELECTABLE_MIN ; 
 TYPE_11__* FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  SPU_ES ; 
 int /*<<< orphan*/  VLC_CODEC_TELETEXT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_9__* FUNC2 (TYPE_11__*) ; 
 TYPE_8__* FUNC3 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_12__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * ppsz_teletext_type ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__,int) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15( demux_t *p_demux, ts_stream_t *p_pes,
                                const dvbpsi_pmt_es_t *p_dvbpsies )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    es_format_t *p_fmt = &p_pes->p_es->fmt;

    ts_teletext_page_t p_page[2 * 64 + 20];
    unsigned i_page = 0;
    dvbpsi_descriptor_t *p_dr;

    /* Gather pages information */
    for( unsigned i_tag_idx = 0; i_tag_idx < 2; i_tag_idx++ )
    {
        p_dr = FUNC0( p_dvbpsies, i_tag_idx == 0 ? 0x46 : 0x56 );
        if( !p_dr )
            continue;

        dvbpsi_teletext_dr_t *p_sub = FUNC3( p_dr );
        if( !p_sub )
            continue;

        for( int i = 0; i < p_sub->i_pages_number; i++ )
        {
            const dvbpsi_teletextpage_t *p_src = &p_sub->p_pages[i];

            if( p_src->i_teletext_type >= 0x06 )
                continue;

            FUNC1( i_page < sizeof(p_page)/sizeof(*p_page) );

            ts_teletext_page_t *p_dst = &p_page[i_page++];

            p_dst->i_type = p_src->i_teletext_type;
            p_dst->i_magazine = p_src->i_teletext_magazine_number
                ? p_src->i_teletext_magazine_number : 8;
            p_dst->i_page = p_src->i_teletext_page_number;
            FUNC8( p_dst->p_iso639, p_src->i_iso6392_language_code, 3 );
        }
    }

    p_dr = FUNC0( p_dvbpsies, 0x59 );
    if( p_dr )
    {
        dvbpsi_subtitling_dr_t *p_sub = FUNC2( p_dr );
        for( int i = 0; p_sub && i < p_sub->i_subtitles_number; i++ )
        {
            dvbpsi_subtitle_t *p_src = &p_sub->p_subtitle[i];

            if( p_src->i_subtitling_type < 0x01 || p_src->i_subtitling_type > 0x03 )
                continue;

            FUNC1( i_page < sizeof(p_page)/sizeof(*p_page) );

            ts_teletext_page_t *p_dst = &p_page[i_page++];

            switch( p_src->i_subtitling_type )
            {
            case 0x01:
                p_dst->i_type = 0x02;
                break;
            default:
                p_dst->i_type = 0x03;
                break;
            }
            /* FIXME check if it is the right split */
            p_dst->i_magazine = (p_src->i_composition_page_id >> 8)
                ? (p_src->i_composition_page_id >> 8) : 8;
            p_dst->i_page = p_src->i_composition_page_id & 0xff;
            FUNC8( p_dst->p_iso639, p_src->i_iso6392_language_code, 3 );
        }
    }

    /* */
    FUNC4(p_fmt, SPU_ES, VLC_CODEC_TELETEXT );

    if( !p_sys->b_split_es || i_page <= 0 )
    {
        p_fmt->subs.teletext.i_magazine = 255;
        p_fmt->subs.teletext.i_page = 0;
        p_fmt->psz_description = FUNC10( FUNC14(ppsz_teletext_type[1]) );

        p_dr = FUNC0( p_dvbpsies, 0x46 );
        if( !p_dr )
            p_dr = FUNC0( p_dvbpsies, 0x56 );

        if( !p_sys->b_split_es && p_dr && p_dr->i_length > 0 )
        {
            /* Descriptor pass-through */
            p_fmt->p_extra = FUNC7( p_dr->i_length );
            if( p_fmt->p_extra )
            {
                p_fmt->i_extra = p_dr->i_length;
                FUNC8( p_fmt->p_extra, p_dr->p_data, p_dr->i_length );
            }
        }
    }
    else
    {
        ts_es_t *p_page_es = p_pes->p_es;
        enum txt_pass_s
        {
            TXT_SUBTITLES = 0,
            TXT_INDEX_PAGE,
            TXT_OTHER,
        };
        for( enum txt_pass_s pass = TXT_SUBTITLES; pass <= TXT_OTHER; pass++ )
        {
            for( unsigned i = 0; i < i_page; i++ )
            {
                const ts_teletext_page_t *p = &p_page[i];
                if(p->i_magazine == 1 && pass != TXT_INDEX_PAGE)
                    continue;
                if((p->i_type == 0x02 || p->i_type == 0x05) && pass != TXT_SUBTITLES)
                    continue;

                /* */
                if( !p_page_es )
                {
                    p_page_es = FUNC12( p_pes->p_es->p_program );
                    if( !p_page_es )
                        break;

                    FUNC5( &p_page_es->fmt, p_fmt );
                    FUNC6( p_page_es->fmt.psz_language );
                    FUNC6( p_page_es->fmt.psz_description );
                    p_page_es->fmt.psz_language = NULL;
                    p_page_es->fmt.psz_description = NULL;
                    FUNC13( p_pes, p_page_es, true );
                }

                /* */
                p_page_es->fmt.i_priority = (pass == TXT_SUBTITLES) ?
                          ES_PRIORITY_SELECTABLE_MIN : ES_PRIORITY_NOT_DEFAULTABLE;
                p_page_es->fmt.psz_language = FUNC11( p->p_iso639, 3 );
                p_page_es->fmt.psz_description = FUNC10(FUNC14(ppsz_teletext_type[p->i_type]));
                p_page_es->fmt.subs.teletext.i_magazine = p->i_magazine;
                p_page_es->fmt.subs.teletext.i_page = p->i_page;

                FUNC9( p_demux,
                             "    * ttxt type=%s lan=%s page=%d%02x",
                             p_page_es->fmt.psz_description,
                             p_page_es->fmt.psz_language,
                             p->i_magazine, p->i_page );

                p_page_es = NULL; /* used */
            }
        }
    }
}