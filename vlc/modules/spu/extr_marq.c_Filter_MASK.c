#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_15__ {int i_sar_den; int i_sar_num; } ;
typedef  TYPE_1__ video_format_t ;
struct TYPE_16__ {int b_ephemer; int b_absolute; TYPE_7__* p_region; scalar_t__ i_stop; scalar_t__ i_start; } ;
typedef  TYPE_2__ subpicture_t ;
struct TYPE_17__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_18__ {scalar_t__ last_time; scalar_t__ i_refresh; char* format; char* message; scalar_t__ i_timeout; int i_pos; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_style; int /*<<< orphan*/  i_yoff; int /*<<< orphan*/  i_xoff; int /*<<< orphan*/ * filepath; } ;
typedef  TYPE_4__ filter_sys_t ;
struct TYPE_20__ {int i_align; TYPE_6__* p_text; int /*<<< orphan*/  i_y; int /*<<< orphan*/  i_x; } ;
struct TYPE_19__ {int /*<<< orphan*/  style; } ;

/* Variables and functions */
 char* FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int SUBPICTURE_ALIGN_LEFT ; 
 int SUBPICTURE_ALIGN_TOP ; 
 int /*<<< orphan*/  VLC_CODEC_TEXT ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_7__* FUNC5 (TYPE_1__*) ; 
 TYPE_6__* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*) ; 

__attribute__((used)) static subpicture_t *FUNC13( filter_t *p_filter, vlc_tick_t date )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    subpicture_t *p_spu = NULL;

    FUNC10( &p_sys->lock );
    if( p_sys->last_time + p_sys->i_refresh > date )
        goto out;

    if( p_sys->filepath != NULL )
    {
        char *fmt = FUNC0( p_filter, p_sys->filepath );
        if( fmt != NULL )
        {
            FUNC2( p_sys->format );
            p_sys->format = fmt;
        }
    }

    char *msg = FUNC12( p_sys->format ? p_sys->format : "" );
    if( FUNC8( msg == NULL ) )
        goto out;
    if( p_sys->message != NULL && !FUNC3( msg, p_sys->message ) )
    {
        FUNC2( msg );
        goto out;
    }
    FUNC2( p_sys->message );
    p_sys->message = msg;

    p_spu = FUNC1( p_filter );
    if( !p_spu )
        goto out;

    video_format_t vfmt;
    FUNC9( &vfmt, VLC_CODEC_TEXT );
    vfmt.i_sar_den = vfmt.i_sar_num = 1;
    p_spu->p_region = FUNC5( &vfmt );
    if( !p_spu->p_region )
    {
        FUNC4( p_spu );
        p_spu = NULL;
        goto out;
    }

    p_sys->last_time = date;

    p_spu->p_region->p_text = FUNC6( msg );
    p_spu->i_start = date;
    p_spu->i_stop  = p_sys->i_timeout == 0 ? 0 : date + p_sys->i_timeout;
    p_spu->b_ephemer = true;

    /*  where to locate the string: */
    if( p_sys->i_pos < 0 )
    {   /*  set to an absolute xy */
        p_spu->p_region->i_align = SUBPICTURE_ALIGN_LEFT | SUBPICTURE_ALIGN_TOP;
        p_spu->b_absolute = true;
    }
    else
    {   /* set to one of the 9 relative locations */
        p_spu->p_region->i_align = p_sys->i_pos;
        p_spu->b_absolute = false;
    }

    p_spu->p_region->i_x = p_sys->i_xoff;
    p_spu->p_region->i_y = p_sys->i_yoff;

    p_spu->p_region->p_text->style = FUNC7( p_sys->p_style );

out:
    FUNC11( &p_sys->lock );
    return p_spu;
}