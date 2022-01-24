#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_y_offset; scalar_t__ i_x_offset; } ;
typedef  TYPE_3__ video_format_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
typedef  int /*<<< orphan*/  sout_stream_t ;
struct TYPE_23__ {int /*<<< orphan*/  lock; } ;
struct TYPE_22__ {int /*<<< orphan*/  video; } ;
struct TYPE_25__ {TYPE_5__* p_spu_blender; int /*<<< orphan*/  p_spu; int /*<<< orphan*/  encoder; int /*<<< orphan*/  p_f_chain; TYPE_2__ fifo; TYPE_1__ decoder_out; } ;
typedef  TYPE_4__ sout_stream_id_sys_t ;
struct TYPE_26__ {int /*<<< orphan*/  date; int /*<<< orphan*/  format; } ;
typedef  TYPE_5__ picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static picture_t * FUNC17( sout_stream_t *p_stream, sout_stream_id_sys_t *id,
                                       picture_t *p_pic )
{
    FUNC1(p_stream);

    if( !id->p_spu )
        return p_pic;

    /* Check if we have a subpicture to overlay */
    video_format_t fmt, outfmt;
    FUNC14( &id->fifo.lock );
    FUNC12( &outfmt, &id->decoder_out.video );
    FUNC15( &id->fifo.lock );
    FUNC12( &fmt, &p_pic->format );
    if( fmt.i_visible_width <= 0 || fmt.i_visible_height <= 0 )
    {
        fmt.i_visible_width  = fmt.i_width;
        fmt.i_visible_height = fmt.i_height;
        fmt.i_x_offset       = 0;
        fmt.i_y_offset       = 0;
    }

    subpicture_t *p_subpic = FUNC8( id->p_spu, NULL, &fmt,
                                         &outfmt, FUNC16(), p_pic->date,
                                         false, false );

    /* Overlay subpicture */
    if( p_subpic )
    {
        if( FUNC3( id->p_f_chain ) )
        {
            /* We can't modify the picture, we need to duplicate it,
                 * in this point the picture is already p_encoder->fmt.in format*/
            picture_t *p_tmp = FUNC13( id->encoder );
            if( FUNC4( p_tmp ) )
            {
                FUNC6( p_tmp, p_pic );
                FUNC7( p_pic );
                p_pic = p_tmp;
            }
        }
        if( FUNC10( !id->p_spu_blender ) )
            id->p_spu_blender = FUNC2( FUNC0( id->p_spu ), &fmt );
        if( FUNC4( id->p_spu_blender ) )
            FUNC5( p_pic, id->p_spu_blender, p_subpic );
        FUNC9( p_subpic );
    }
    FUNC11( &fmt );
    FUNC11( &outfmt );

    return p_pic;
}