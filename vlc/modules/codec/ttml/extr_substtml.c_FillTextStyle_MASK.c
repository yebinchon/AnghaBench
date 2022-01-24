#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* psz_fontname; unsigned int i_background_alpha; unsigned int i_font_alpha; int i_features; unsigned int i_font_color; unsigned int i_background_color; unsigned int i_outline_color; unsigned int i_outline_alpha; int i_outline_width; int /*<<< orphan*/  i_style_flags; } ;
typedef  TYPE_1__ text_style_t ;

/* Variables and functions */
 int /*<<< orphan*/  STYLE_BACKGROUND ; 
 int /*<<< orphan*/  STYLE_BOLD ; 
 int STYLE_HAS_BACKGROUND_ALPHA ; 
 int STYLE_HAS_BACKGROUND_COLOR ; 
 int STYLE_HAS_FLAGS ; 
 int STYLE_HAS_FONT_ALPHA ; 
 int STYLE_HAS_FONT_COLOR ; 
 int /*<<< orphan*/  STYLE_ITALIC ; 
 int /*<<< orphan*/  STYLE_STRIKEOUT ; 
 int /*<<< orphan*/  STYLE_UNDERLINE ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 void* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int FUNC5 (char*,char**,int) ; 
 unsigned int FUNC6 (char const*,int*) ; 

__attribute__((used)) static void FUNC7( const char *psz_attr, const char *psz_val,
                           text_style_t *p_text_style )
{
    if( !FUNC2 ( "tts:fontFamily", psz_attr ) )
    {
        FUNC1( p_text_style->psz_fontname );
        p_text_style->psz_fontname = FUNC3( psz_val );
    }
    else if( !FUNC2( "tts:opacity", psz_attr ) )
    {
        p_text_style->i_background_alpha = FUNC0( psz_val );
        p_text_style->i_font_alpha = FUNC0( psz_val );
        p_text_style->i_features |= STYLE_HAS_BACKGROUND_ALPHA | STYLE_HAS_FONT_ALPHA;
    }
    else if( !FUNC2( "tts:color", psz_attr ) )
    {
        unsigned int i_color = FUNC6( psz_val, NULL );
        p_text_style->i_font_color = (i_color & 0xffffff);
        p_text_style->i_font_alpha = (i_color & 0xFF000000) >> 24;
        p_text_style->i_features |= STYLE_HAS_FONT_COLOR | STYLE_HAS_FONT_ALPHA;
    }
    else if( !FUNC2( "tts:backgroundColor", psz_attr ) )
    {
        unsigned int i_color = FUNC6( psz_val, NULL );
        p_text_style->i_background_color = i_color & 0xFFFFFF;
        p_text_style->i_background_alpha = (i_color & 0xFF000000) >> 24;
        p_text_style->i_features |= STYLE_HAS_BACKGROUND_COLOR
                                                  | STYLE_HAS_BACKGROUND_ALPHA;
        p_text_style->i_style_flags |= STYLE_BACKGROUND;
    }
    else if( !FUNC2( "tts:fontStyle", psz_attr ) )
    {
        if( !FUNC2 ( "italic", psz_val ) || !FUNC2 ( "oblique", psz_val ) )
            p_text_style->i_style_flags |= STYLE_ITALIC;
        else
            p_text_style->i_style_flags &= ~STYLE_ITALIC;
        p_text_style->i_features |= STYLE_HAS_FLAGS;
    }
    else if( !FUNC2 ( "tts:fontWeight", psz_attr ) )
    {
        if( !FUNC2 ( "bold", psz_val ) )
            p_text_style->i_style_flags |= STYLE_BOLD;
        else
            p_text_style->i_style_flags &= ~STYLE_BOLD;
        p_text_style->i_features |= STYLE_HAS_FLAGS;
    }
    else if( !FUNC2 ( "tts:textDecoration", psz_attr ) )
    {
        if( !FUNC2 ( "underline", psz_val ) )
            p_text_style->i_style_flags |= STYLE_UNDERLINE;
        else if( !FUNC2 ( "noUnderline", psz_val ) )
            p_text_style->i_style_flags &= ~STYLE_UNDERLINE;
        if( !FUNC2 ( "lineThrough", psz_val ) )
            p_text_style->i_style_flags |= STYLE_STRIKEOUT;
        else if( !FUNC2 ( "noLineThrough", psz_val ) )
            p_text_style->i_style_flags &= ~STYLE_STRIKEOUT;
        p_text_style->i_features |= STYLE_HAS_FLAGS;
    }
    else if( !FUNC2( "tts:textOutline", psz_attr ) )
    {
        char *value = FUNC3( psz_val );
        char* psz_saveptr = NULL;
        char* token = (value) ? FUNC4( value, " ", &psz_saveptr ) : NULL;
        // <color>? <length> <length>?
        if( token != NULL )
        {
            bool b_ok = false;
            unsigned int color = FUNC6( token, &b_ok );
            if( b_ok )
            {
                p_text_style->i_outline_color = color & 0xFFFFFF;
                p_text_style->i_outline_alpha = (color & 0xFF000000) >> 24;
                token = FUNC4( NULL, " ", &psz_saveptr );
                if( token != NULL )
                {
                    char* psz_end = NULL;
                    int i_outline_width = FUNC5( token, &psz_end, 10 );
                    if( psz_end != token )
                    {
                        // Assume unit is pixel, and ignore border radius
                        p_text_style->i_outline_width = i_outline_width;
                    }
                }
            }
        }
        FUNC1( value );
    }
}