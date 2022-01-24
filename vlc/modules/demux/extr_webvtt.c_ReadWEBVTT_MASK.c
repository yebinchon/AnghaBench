#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  webvtt_text_parser_t ;
typedef  int /*<<< orphan*/  webvtt_cue_t ;
struct callback_ctx {int b_ordered; int /*<<< orphan*/  styles; int /*<<< orphan*/  regions; TYPE_4__* p_demux; } ;
struct TYPE_11__ {int /*<<< orphan*/  s; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_data; int /*<<< orphan*/  p_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_data; int /*<<< orphan*/  p_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_count; int /*<<< orphan*/  p_array; } ;
struct TYPE_12__ {TYPE_3__ styles_headers; TYPE_2__ regions_headers; TYPE_1__ cues; } ;
typedef  TYPE_5__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  ParserCueDoneHandler ; 
 int /*<<< orphan*/  ParserGetCueHandler ; 
 int /*<<< orphan*/  ParserHeaderHandler ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  cue_Compare ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (struct callback_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    struct callback_ctx ctx;
    ctx.p_demux = p_demux;
    ctx.b_ordered = true;

    webvtt_text_parser_t *p_parser =
            FUNC7( &ctx, ParserGetCueHandler,
                                          ParserCueDoneHandler,
                                          ParserHeaderHandler );
    if( p_parser == NULL )
        return VLC_EGENERIC;

    (void) FUNC3( &ctx.regions );
    (void) FUNC3( &ctx.styles );

    char *psz_line;
    while( (psz_line = FUNC4( p_demux->s )) )
        FUNC6( p_parser, psz_line );
    FUNC6( p_parser, NULL );

    if( !ctx.b_ordered )
        FUNC2( p_sys->cues.p_array, p_sys->cues.i_count, sizeof(webvtt_cue_t), cue_Compare );

    FUNC0( p_demux );

    FUNC1( &ctx.regions, &p_sys->regions_headers.p_data,
                                  &p_sys->regions_headers.i_data );
    FUNC1( &ctx.styles, &p_sys->styles_headers.p_data,
                                 &p_sys->styles_headers.i_data );

    FUNC5( p_parser );

    return VLC_SUCCESS;
}