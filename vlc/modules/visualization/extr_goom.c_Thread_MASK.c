#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {scalar_t__ date; TYPE_1__* p; } ;
typedef  TYPE_3__ picture_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_9__ {int i_width; int i_height; } ;
struct TYPE_11__ {int b_exit; int i_speed; int /*<<< orphan*/  p_vout; TYPE_2__ fmt; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  date; } ;
typedef  TYPE_4__ goom_thread_t ;
typedef  int /*<<< orphan*/  date_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_pixels; } ;
typedef  int /*<<< orphan*/  PluginInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ GOOM_DELAY ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,double,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void *FUNC15( void *p_thread_data )
{
    goom_thread_t *p_thread = (goom_thread_t*)p_thread_data;
    date_t i_pts;
    int16_t p_data[2][512];
    int i_data = 0, i_count = 0;
    PluginInfo *p_plugin_info;
    int canc = FUNC11 ();

    p_plugin_info = FUNC3( p_thread->fmt.i_width, p_thread->fmt.i_height );

    for( ;; )
    {
        uint32_t  *plane;
        picture_t *p_pic;

        /* FIXME the way the update is done is not really good.
         *  Supurious wake up from p_thread->wait will make it generates a frame
         * without using new samples (probably rare as we should not be waiting
         * samples).
         *  The frame rate at which the video is generated is not well controlled
         * nor the time at which each frame is displayed (not smooth)
         */
        /* goom_update is damn slow, so just copy data and release the lock */
        FUNC8( &p_thread->lock );
        if( !p_thread->b_exit &&
            FUNC0( (int16_t *)p_data, &i_data,
                        &i_pts, &p_thread->date, p_thread ) != VLC_SUCCESS )
            FUNC7( &p_thread->wait, &p_thread->lock );
        bool b_exit = p_thread->b_exit;
        FUNC9( &p_thread->lock );

        if( b_exit )
            break;

        /* Speed selection */
        if( p_thread->i_speed && (++i_count % (p_thread->i_speed+1)) ) continue;

        /* Frame dropping if necessary */
        if( FUNC1( &i_pts ) + GOOM_DELAY <= FUNC12() ) continue;

        plane = FUNC4( p_plugin_info, p_data, 0, 0.0,
                             NULL, NULL );

        p_pic = FUNC13( p_thread->p_vout );
        if( FUNC6(p_pic == NULL) )
            continue;

        FUNC5( p_pic->p[0].p_pixels, plane,
                p_thread->fmt.i_width * p_thread->fmt.i_height * 4 );

        p_pic->date = FUNC1( &i_pts ) + GOOM_DELAY;
        FUNC14( p_thread->p_vout, p_pic );
    }

    FUNC2( p_plugin_info );
    FUNC10 (canc);
    return NULL;
}