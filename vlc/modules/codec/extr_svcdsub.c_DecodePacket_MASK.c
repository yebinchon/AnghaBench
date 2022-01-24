#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int i_entries; int /*<<< orphan*/ ** palette; } ;
typedef  TYPE_1__ video_palette_t ;
struct TYPE_23__ {TYPE_1__* p_palette; scalar_t__ i_y_offset; scalar_t__ i_x_offset; int /*<<< orphan*/  i_visible_height; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_visible_width; int /*<<< orphan*/  i_width; int /*<<< orphan*/  i_sar_den; int /*<<< orphan*/  i_sar_num; } ;
typedef  TYPE_2__ video_format_t ;
struct TYPE_24__ {int b_ephemer; TYPE_4__* p_region; scalar_t__ i_stop; scalar_t__ i_start; } ;
typedef  TYPE_3__ subpicture_t ;
struct TYPE_25__ {int /*<<< orphan*/  i_y; int /*<<< orphan*/  i_x; } ;
typedef  TYPE_4__ subpicture_region_t ;
struct TYPE_26__ {TYPE_6__* p_sys; } ;
typedef  TYPE_5__ decoder_t ;
struct TYPE_27__ {int /*<<< orphan*/  i_y_start; int /*<<< orphan*/  i_x_start; int /*<<< orphan*/ ** p_palette; int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; scalar_t__ i_duration; } ;
typedef  TYPE_6__ decoder_sys_t ;
struct TYPE_28__ {scalar_t__ i_pts; } ;
typedef  TYPE_7__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  VLC_CODEC_YUVP ; 
 TYPE_3__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_4__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static subpicture_t *FUNC7( decoder_t *p_dec, block_t *p_data )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    subpicture_t  *p_spu;
    subpicture_region_t *p_region;
    video_format_t fmt;
    video_palette_t palette;
    int i;

    /* Allocate the subpicture internal data. */
    p_spu = FUNC1( p_dec, NULL );
    if( !p_spu ) return NULL;

    p_spu->i_start = p_data->i_pts;
    p_spu->i_stop  = p_data->i_pts + p_sys->i_duration;
    p_spu->b_ephemer = true;

    /* Create new subtitle region */
    FUNC6( &fmt, VLC_CODEC_YUVP );

    /**
       The video on which the subtitle sits, is scaled, probably
       4:3. However subtitle bitmaps assume an 1:1 aspect ratio.

       FIXME: We should get the video aspect ratio from somewhere.
       Two candidates are the video and the other possibility would be
       the access module.
    */
    fmt.i_sar_num = p_sys->i_height;
    fmt.i_sar_den = p_sys->i_width;

    fmt.i_width = fmt.i_visible_width = p_sys->i_width;
    fmt.i_height = fmt.i_visible_height = p_sys->i_height;
    fmt.i_x_offset = fmt.i_y_offset = 0;
    fmt.p_palette = &palette;
    fmt.p_palette->i_entries = 4;
    for( i = 0; i < fmt.p_palette->i_entries; i++ )
    {
        fmt.p_palette->palette[i][0] = p_sys->p_palette[i][0];
        fmt.p_palette->palette[i][1] = p_sys->p_palette[i][1];
        fmt.p_palette->palette[i][2] = p_sys->p_palette[i][2];
        fmt.p_palette->palette[i][3] = p_sys->p_palette[i][3];
    }

    p_region = FUNC4( &fmt );
    fmt.p_palette = NULL;
    FUNC5( &fmt );
    if( !p_region )
    {
        FUNC2( p_dec, "cannot allocate SVCD subtitle region" );
        FUNC3( p_spu );
        return NULL;
    }

    p_spu->p_region = p_region;
    p_region->i_x = p_sys->i_x_start;
    p_region->i_y = p_sys->i_y_start;

    FUNC0( p_dec, p_data, p_region );

    return p_spu;
}