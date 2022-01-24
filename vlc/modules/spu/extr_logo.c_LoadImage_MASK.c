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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  image_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_CODEC_YUVA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_t *FUNC7( vlc_object_t *p_this, const char *psz_filename )
{
    if( !psz_filename )
        return NULL;

    image_handler_t *p_image = FUNC1( p_this );
    if( !p_image )
        return NULL;

    video_format_t fmt_out;
    FUNC5( &fmt_out, VLC_CODEC_YUVA );

    char *psz_url = FUNC6( psz_filename, NULL );
    picture_t *p_pic = FUNC3( p_image, psz_url, &fmt_out );
    FUNC0( psz_url );
    FUNC2( p_image );
    FUNC4( &fmt_out );

    return p_pic;
}