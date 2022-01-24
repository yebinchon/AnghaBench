#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_fourcc_t ;
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_6__ {TYPE_1__* p; } ;
typedef  TYPE_2__ picture_t ;
typedef  int /*<<< orphan*/  image_handler_t ;
struct TYPE_5__ {int /*<<< orphan*/  i_visible_lines; int /*<<< orphan*/  i_visible_pitch; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 size_t Y_PLANE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7( vlc_object_t *p_this, picture_t **pp_pic,
                                 vlc_fourcc_t i_chroma, char *psz_file, const char *psz_name )
{
    image_handler_t *p_image;
    video_format_t fmt_out;

    FUNC6( &fmt_out, i_chroma );

    p_image = FUNC0( p_this );
    *pp_pic = FUNC2( p_image, psz_file, &fmt_out );
    FUNC5( &fmt_out );
    FUNC1( p_image );

    if( *pp_pic == NULL )
    {
        FUNC4( p_this, "Unable to load %s image", psz_name );
        return VLC_EGENERIC;
    }

    FUNC3( p_this, "%s image has dim %d x %d (Y plane)", psz_name,
             (*pp_pic)->p[Y_PLANE].i_visible_pitch,
             (*pp_pic)->p[Y_PLANE].i_visible_lines );

    return VLC_SUCCESS;
}