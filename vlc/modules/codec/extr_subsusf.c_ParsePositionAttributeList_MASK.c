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

/* Variables and functions */
 int ATTRIBUTE_ALIGNMENT ; 
 int ATTRIBUTE_X ; 
 int ATTRIBUTE_X_PERCENT ; 
 int ATTRIBUTE_Y ; 
 int ATTRIBUTE_Y_PERCENT ; 
 char* FUNC0 (char*,char*) ; 
 int SUBPICTURE_ALIGN_BOTTOM ; 
 int SUBPICTURE_ALIGN_LEFT ; 
 int SUBPICTURE_ALIGN_RIGHT ; 
 int SUBPICTURE_ALIGN_TOP ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char) ; 

__attribute__((used)) static int FUNC5( char *psz_subtitle, int *i_align,
                                       int *i_x, int *i_y )
{
    int   i_mask = 0;

    char *psz_align    = FUNC0( "alignment", psz_subtitle );
    char *psz_margin_x = FUNC0( "horizontal-margin", psz_subtitle );
    char *psz_margin_y = FUNC0( "vertical-margin", psz_subtitle );
    /* -- UNSUPPORTED
    char *psz_relative = GrabAttributeValue( "relative-to", psz_subtitle );
    char *psz_rotate_x = GrabAttributeValue( "rotate-x", psz_subtitle );
    char *psz_rotate_y = GrabAttributeValue( "rotate-y", psz_subtitle );
    char *psz_rotate_z = GrabAttributeValue( "rotate-z", psz_subtitle );
    */

    *i_align = SUBPICTURE_ALIGN_BOTTOM;
    *i_x = 0;
    *i_y = 0;

    if( psz_align )
    {
        if( !FUNC3( "TopLeft", psz_align ) )
            *i_align = SUBPICTURE_ALIGN_TOP | SUBPICTURE_ALIGN_LEFT;
        else if( !FUNC3( "TopCenter", psz_align ) )
            *i_align = SUBPICTURE_ALIGN_TOP;
        else if( !FUNC3( "TopRight", psz_align ) )
            *i_align = SUBPICTURE_ALIGN_TOP | SUBPICTURE_ALIGN_RIGHT;
        else if( !FUNC3( "MiddleLeft", psz_align ) )
            *i_align = SUBPICTURE_ALIGN_LEFT;
        else if( !FUNC3( "MiddleCenter", psz_align ) )
            *i_align = 0;
        else if( !FUNC3( "MiddleRight", psz_align ) )
            *i_align = SUBPICTURE_ALIGN_RIGHT;
        else if( !FUNC3( "BottomLeft", psz_align ) )
            *i_align = SUBPICTURE_ALIGN_BOTTOM | SUBPICTURE_ALIGN_LEFT;
        else if( !FUNC3( "BottomCenter", psz_align ) )
            *i_align = SUBPICTURE_ALIGN_BOTTOM;
        else if( !FUNC3( "BottomRight", psz_align ) )
            *i_align = SUBPICTURE_ALIGN_BOTTOM | SUBPICTURE_ALIGN_RIGHT;

        i_mask |= ATTRIBUTE_ALIGNMENT;
        FUNC2( psz_align );
    }
    if( psz_margin_x )
    {
        *i_x = FUNC1( psz_margin_x );
        if( FUNC4( psz_margin_x, '%' ) )
            i_mask |= ATTRIBUTE_X_PERCENT;
        else
            i_mask |= ATTRIBUTE_X;

        FUNC2( psz_margin_x );
    }
    if( psz_margin_y )
    {
        *i_y = FUNC1( psz_margin_y );
        if( FUNC4( psz_margin_y, '%' ) )
            i_mask |= ATTRIBUTE_Y_PERCENT;
        else
            i_mask |= ATTRIBUTE_Y;

        FUNC2( psz_margin_y );
    }
    return i_mask;
}