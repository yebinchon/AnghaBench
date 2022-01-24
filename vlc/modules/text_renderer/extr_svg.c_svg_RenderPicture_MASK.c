#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int i_bits_per_pixel; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; int /*<<< orphan*/  i_visible_height; int /*<<< orphan*/  i_visible_width; int /*<<< orphan*/  i_chroma; } ;
typedef  TYPE_2__ video_format_t ;
struct TYPE_16__ {TYPE_1__* p; } ;
typedef  TYPE_3__ picture_t ;
typedef  int /*<<< orphan*/  guint8 ;
typedef  int /*<<< orphan*/  filter_t ;
typedef  int /*<<< orphan*/  cairo_t ;
typedef  int /*<<< orphan*/  cairo_surface_t ;
struct TYPE_18__ {int /*<<< orphan*/  message; } ;
struct TYPE_17__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_14__ {int i_pitch; int i_lines; int /*<<< orphan*/  p_pixels; } ;
typedef  int /*<<< orphan*/  RsvgHandle ;
typedef  TYPE_4__ RsvgDimensionData ;
typedef  TYPE_5__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  CAIRO_FORMAT_ARGB32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_CODEC_BGRA ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_3__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static picture_t * FUNC17( filter_t *p_filter,
                                      const char *psz_svgdata )
{
    RsvgHandle *p_handle;
    GError *error = NULL;

    p_handle = FUNC11( (const guint8 *)psz_svgdata,
                                          FUNC13( psz_svgdata ), &error );
    if( !p_handle )
    {
        FUNC7( p_filter, "error while rendering SVG: %s", error->message );
        return NULL;
    }

    RsvgDimensionData dim;
    FUNC10( p_handle, &dim );
    float scale;
    FUNC14( p_filter, &dim.width, &dim.height, &scale );

    /* Create a new subpicture region */
    video_format_t fmt;
    FUNC16( &fmt, VLC_CODEC_BGRA ); /* CAIRO_FORMAT_ARGB32 == VLC_CODEC_BGRA, go figure */
    fmt.i_bits_per_pixel = 32;
    fmt.i_chroma = VLC_CODEC_BGRA;
    fmt.i_width = fmt.i_visible_width = dim.width;
    fmt.i_height = fmt.i_visible_height = dim.height;

    picture_t *p_picture = FUNC8( &fmt );
    if( !p_picture )
    {
        FUNC15( &fmt );
        FUNC5( FUNC0( p_handle ) );
        return NULL;
    }
    FUNC6( p_picture->p[0].p_pixels, 0x00, p_picture->p[0].i_pitch * p_picture->p[0].i_lines );

    cairo_surface_t* surface = FUNC3( p_picture->p->p_pixels,
                                                                    CAIRO_FORMAT_ARGB32,
                                                                    fmt.i_width, fmt.i_height,
                                                                    p_picture->p[0].i_pitch );
    if( !surface )
    {
        FUNC5( FUNC0( p_handle ) );
        FUNC9( p_picture );
        return NULL;
    }

    cairo_t *cr = FUNC1( surface );
    if( !cr )
    {
        FUNC7( p_filter, "error while creating cairo surface" );
        FUNC4( surface );
        FUNC5( FUNC0( p_handle ) );
        FUNC9( p_picture );
        return NULL;
    }

    if( ! FUNC12( p_handle, cr ) )
    {
        FUNC7( p_filter, "error while rendering SVG" );
        FUNC2( cr );
        FUNC4( surface );
        FUNC5( FUNC0( p_handle ) );
        FUNC9( p_picture );
        return NULL;
    }

    FUNC2( cr );
    FUNC4( surface );
    FUNC5( FUNC0( p_handle ) );

    return p_picture;
}