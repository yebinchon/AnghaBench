#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  webvtt_text_parser_t ;
struct TYPE_7__ {int /*<<< orphan*/ * stream; } ;
struct parser_ctx {TYPE_3__* p_dec; int /*<<< orphan*/ * p_region; TYPE_2__ css; } ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_extra; int /*<<< orphan*/  p_extra; } ;
struct TYPE_8__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_3__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parser_ctx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (struct parser_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct parser_ctx*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *)) ; 

__attribute__((used)) static void FUNC7( decoder_t *p_dec )
{
    stream_t *p_stream = FUNC2( p_dec,
                                               p_dec->fmt_in.p_extra,
                                               p_dec->fmt_in.i_extra,
                                               true );
    if( !p_stream )
        return;

   struct parser_ctx ctx;
#ifdef HAVE_CSS
   ctx.css.stream = NULL;
#endif
   ctx.p_region = NULL;
   ctx.p_dec = p_dec;
   webvtt_text_parser_t *p_parser =
           FUNC6( &ctx, NULL, NULL, ParserHeaderHandler );
   if( p_parser )
   {
        char *psz_line;
        while( (psz_line = FUNC3( p_stream )) )
            FUNC5( p_parser, psz_line );
        FUNC4( p_parser );
        /* commit using null */
        FUNC0( &ctx, 0, false, NULL );
   }

    FUNC1( p_stream );
}