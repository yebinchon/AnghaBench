#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ i_chroma; } ;
typedef  TYPE_1__ video_format_t ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_13__ {int /*<<< orphan*/  p_parent; } ;
typedef  TYPE_2__ image_handler_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__ const*,TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8( image_handler_t *p_image, picture_t *p_pic,
                          const video_format_t *p_fmt_in, const video_format_t *p_fmt_out,
                          const char *psz_url )
{
    block_t *p_block;
    FILE *file;
    video_format_t fmt_out = *p_fmt_out;

    if( !fmt_out.i_chroma )
    {
        /* Try to guess format from file name */
        fmt_out.i_chroma = FUNC4( psz_url );
    }

    file = FUNC6( psz_url, "wb" );
    if( !file )
    {
        FUNC5( p_image->p_parent, "%s: %s", psz_url, FUNC7(errno) );
        return VLC_EGENERIC;
    }

    p_block = FUNC0( p_image, p_pic, p_fmt_in, &fmt_out );

    int err = 0;
    if( p_block )
    {
        if( FUNC3( p_block->p_buffer, p_block->i_buffer, 1, file ) != 1 )
            err = errno;
        FUNC1( p_block );
    }

    if( FUNC2( file ) && !err )
        err = errno;

    if( err )
    {
       errno = err;
       FUNC5( p_image->p_parent, "%s: %s", psz_url, FUNC7(errno) );
    }

    return err ? VLC_EGENERIC : VLC_SUCCESS;
}