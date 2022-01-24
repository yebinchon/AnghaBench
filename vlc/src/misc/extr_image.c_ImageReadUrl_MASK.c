#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_fourcc_t ;
typedef  int /*<<< orphan*/  video_format_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_4__ {int /*<<< orphan*/  p_parent; } ;
typedef  TYPE_1__ image_handler_t ;
typedef  int /*<<< orphan*/  es_format_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ SSIZE_MAX ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static picture_t *FUNC12( image_handler_t *p_image, const char *psz_url,
                                video_format_t *p_fmt_out )
{
    block_t *p_block;
    picture_t *p_pic;
    stream_t *p_stream = NULL;
    uint64_t i_size;

    p_stream = FUNC11( p_image->p_parent, psz_url );

    if( !p_stream )
    {
        FUNC6( p_image->p_parent, "could not open %s for reading",
                 psz_url );
        return NULL;
    }

    if( FUNC10( p_stream, &i_size ) || i_size > SSIZE_MAX )
    {
        FUNC6( p_image->p_parent, "could not read %s", psz_url );
        goto error;
    }

    p_block = FUNC8( p_stream, i_size );
    if( p_block == NULL )
        goto error;

    vlc_fourcc_t i_chroma = 0;
    char *psz_mime = FUNC7( p_stream );
    if( psz_mime != NULL )
    {
        i_chroma = FUNC5( psz_mime );
        FUNC3( psz_mime );
    }
    if( !i_chroma )
    {
       /* Try to guess format from file name */
       i_chroma = FUNC4( psz_url );
    }
    FUNC9( p_stream );


    es_format_t fmtin;
    FUNC2( &fmtin, VIDEO_ES, i_chroma );
    p_pic = FUNC0( p_image, p_block, &fmtin, p_fmt_out );

    FUNC1( &fmtin );

    return p_pic;
error:
    FUNC9( p_stream );
    return NULL;
}