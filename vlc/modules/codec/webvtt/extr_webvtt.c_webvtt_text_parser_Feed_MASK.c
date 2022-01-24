#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char** reads; scalar_t__ section; TYPE_3__* p_cue; int /*<<< orphan*/  priv; TYPE_3__* (* pf_get_cue ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* pf_cue_done ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
typedef  TYPE_1__ webvtt_text_parser_t ;
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_9__ {char* psz_text; char const* psz_id; scalar_t__ i_stop; scalar_t__ i_start; int /*<<< orphan*/ * psz_attrs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ WEBVTT_SECTION_CUES ; 
 scalar_t__ WEBVTT_SECTION_NOTE ; 
 scalar_t__ WEBVTT_SECTION_REGION ; 
 scalar_t__ WEBVTT_SECTION_STYLE ; 
 scalar_t__ WEBVTT_SECTION_UNDEFINED ; 
 int FUNC1 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (char const*,scalar_t__*) ; 

void FUNC14( webvtt_text_parser_t *p, char *psz_line )
{
    if( psz_line == NULL )
    {
        if( p->p_cue )
        {
            if( p->pf_cue_done )
                p->pf_cue_done( p->priv, p->p_cue );
            p->p_cue = NULL;
        }
        return;
    }

    FUNC3(p->reads[0]);
    p->reads[0] = p->reads[1];
    p->reads[1] = p->reads[2];
    p->reads[2] = psz_line;

    /* Lookup keywords */
    if( FUNC12(p->section == WEBVTT_SECTION_UNDEFINED) )
    {
        if( FUNC0( psz_line, "\xEF\xBB\xBFWEBVTT" ) ||
            FUNC0( psz_line, "WEBVTT" )  )
        {
            p->section = WEBVTT_SECTION_UNDEFINED;
            if( p->p_cue )
            {
                if( p->pf_cue_done )
                    p->pf_cue_done( p->priv, p->p_cue );
                p->p_cue = NULL;
            }
            return;
        }
        else if( FUNC0( psz_line, "STYLE" ) )
        {
            p->section = WEBVTT_SECTION_STYLE;
            FUNC2( p, psz_line, true );
            return;
        }
        else if( FUNC0( psz_line, "REGION" ) )
        {
            p->section = WEBVTT_SECTION_REGION;
            FUNC2( p, psz_line, true );
            return;
        }
        else if( FUNC0( psz_line, "NOTE" ) )
        {
            p->section = WEBVTT_SECTION_NOTE;
            return;
        }
        else if( psz_line[0] != 0 )
        {
            p->section = WEBVTT_SECTION_CUES;
        }
    }

    if( FUNC4(p->section == WEBVTT_SECTION_CUES) )
    {
        if( p->p_cue )
        {
            if( psz_line[0] == 0 )
            {
                if( p->p_cue )
                {
                    if( p->pf_cue_done )
                        p->pf_cue_done( p->priv, p->p_cue );
                    p->p_cue = NULL;
                }
            }
            else
            {
                char *psz_merged;
                if( -1 < FUNC1( &psz_merged, "%s\n%s", p->p_cue->psz_text, psz_line ) )
                {
                    FUNC3( p->p_cue->psz_text );
                    p->p_cue->psz_text = psz_merged;
                }
                return;
            }
        }

        if( p->reads[1] == NULL )
            return;

        const char *psz_split = FUNC7( p->reads[1], " --> " );
        if( psz_split )
        {
            vlc_tick_t i_start, i_stop;

            if( FUNC13( p->reads[1], &i_start ) &&
                FUNC13( psz_split + 5,  &i_stop ) && i_start <= i_stop )
            {
                const char *psz_attrs = FUNC5( psz_split + 5 + 5, ' ' );
                p->p_cue = ( p->pf_get_cue ) ? p->pf_get_cue( p->priv ) : NULL;
                if( p->p_cue )
                {
                    p->p_cue->psz_attrs = ( psz_attrs ) ? FUNC6( psz_attrs ) : NULL;
                    p->p_cue->psz_id = p->reads[0];
                    p->reads[0] = NULL;
                    p->p_cue->psz_text = p->reads[2];
                    p->reads[2] = NULL;
                    p->p_cue->i_start = i_start;
                    p->p_cue->i_stop = i_stop;
                }
            }
        }
    }
    else if( p->section == WEBVTT_SECTION_STYLE )
    {
        FUNC2( p, psz_line, false );
        if( psz_line[0] == 0 )
            p->section = WEBVTT_SECTION_UNDEFINED;
    }
    else if( p->section == WEBVTT_SECTION_REGION )
    {
        FUNC2( p, psz_line, false );
        if( psz_line[0] == 0 ) /* End of region declaration */
            p->section = WEBVTT_SECTION_UNDEFINED;
    }
    else if( p->section == WEBVTT_SECTION_NOTE )
    {
        if( psz_line[0] == 0 )
            p->section = WEBVTT_SECTION_UNDEFINED;
    }
}