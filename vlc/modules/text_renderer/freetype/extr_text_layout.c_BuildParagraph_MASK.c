#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uni_char_t ;
typedef  int /*<<< orphan*/  text_style_t ;
typedef  int /*<<< orphan*/  ruby_block_t ;
typedef  int /*<<< orphan*/  paragraph_t ;
typedef  int /*<<< orphan*/  filter_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static paragraph_t * FUNC9( filter_t *p_filter,
                                     int i_size,
                                     const uni_char_t *p_uchars,
                                     text_style_t **pp_styles,
                                     ruby_block_t **pp_ruby,
                                     int i_runs_size,
                                     unsigned *pi_max_advance_x )
{
    paragraph_t *p_paragraph = FUNC4( p_filter, i_size,
                                p_uchars,
                                pp_styles,
                                pp_ruby,
                                i_runs_size );
    if( !p_paragraph )
        return NULL;

#ifdef HAVE_FRIBIDI
    if( AnalyzeParagraph( p_paragraph ) )
        goto error;
#endif

    if( FUNC2( p_filter, p_paragraph ) )
        goto error;

#if defined HAVE_HARFBUZZ
    if( ShapeParagraphHarfBuzz( p_filter, &p_paragraph ) )
        goto error;

    if( LoadGlyphs( p_filter, p_paragraph, true, false, pi_max_advance_x ) )
        goto error;

#elif defined HAVE_FRIBIDI
    if( ShapeParagraphFriBidi( p_filter, p_paragraph ) )
        goto error;
    if( LoadGlyphs( p_filter, p_paragraph, false, true, pi_max_advance_x ) )
        goto error;
    if( RemoveZeroWidthCharacters( p_paragraph ) )
        goto error;
    if( ZeroNsmAdvance( p_paragraph ) )
        goto error;
#else
    if( FUNC3( p_filter, p_paragraph, false, true, pi_max_advance_x ) )
        goto error;
#endif

    return p_paragraph;

error:
    if( p_paragraph )
        FUNC1( p_paragraph );

    return NULL;
}