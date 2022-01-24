#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_27__ {scalar_t__ i_planes; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ picture_t ;
struct TYPE_28__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_29__ {scalar_t__ i_wrapper_output; scalar_t__ i_internal_chroma; TYPE_1__* p_proc_image; int /*<<< orphan*/  p_image; int /*<<< orphan*/ * p_cv_image; TYPE_4__* p_opencv; } ;
typedef  TYPE_3__ filter_sys_t ;
struct TYPE_30__ {int /*<<< orphan*/  (* pf_video_filter ) (TYPE_4__*,TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ CINPUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ NONE ; 
 scalar_t__ PROCESSED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ VINPUT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_1__*) ; 

__attribute__((used)) static picture_t* FUNC12( filter_t* p_filter, picture_t* p_pic )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    picture_t* p_outpic = FUNC3( p_filter );
    if( p_outpic == NULL ) {
        FUNC6( p_filter, "couldn't get a p_outpic!" );
        FUNC10( p_pic );
        return NULL;
    }

    // Make a copy if we want to show the original input
    if (p_sys->i_wrapper_output == VINPUT)
        FUNC7( p_outpic, p_pic );

    FUNC2( p_filter, p_pic );
    // Pass the image (as a pointer to the first IplImage*) to the
    // internal OpenCV filter for processing.
    p_sys->p_opencv->pf_video_filter( p_sys->p_opencv, (picture_t*)&(p_sys->p_cv_image[0]) );

    if(p_sys->i_wrapper_output == PROCESSED) {
        // Processed video
        if( (p_sys->p_proc_image) &&
            (p_sys->p_proc_image->i_planes > 0) &&
            (p_sys->i_internal_chroma != CINPUT) ) {
            //p_sys->p_proc_image->format.i_chroma = VLC_CODEC_RGB24;

            video_format_t fmt_out = p_pic->format;
            //picture_Release( p_outpic );

            /*
             * We have to copy out the image from image_Convert(), otherwise
             * you leak pictures for some reason:
             * main video output error: pictures leaked, trying to workaround
             */
            picture_t* p_outpic_tmp = FUNC4(
                        p_sys->p_image,
                        p_sys->p_proc_image,
                        &(p_sys->p_proc_image->format),
                        &fmt_out );

            FUNC8( p_outpic, p_outpic_tmp );
            FUNC0( p_outpic, p_outpic_tmp );
        } else if( p_sys->i_internal_chroma == CINPUT ) {
            FUNC8( p_outpic, p_sys->p_proc_image );
            FUNC9( p_outpic, p_sys->p_proc_image );
        }
    }

    FUNC1( p_filter );
    FUNC10( p_pic );

#ifndef NDEBUG
    FUNC5( p_filter, "Filter() done" );
#endif

    if( p_sys->i_wrapper_output != NONE ) {
        return p_outpic;
    } else { // NONE
        FUNC10( p_outpic );
        return NULL;
    }
}