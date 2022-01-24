#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  i_chroma; } ;
struct TYPE_16__ {TYPE_4__* p; TYPE_1__ format; } ;
typedef  TYPE_2__ picture_t ;
struct TYPE_17__ {int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_3__ filter_t ;
typedef  int /*<<< orphan*/  filter_sys_t ;
struct TYPE_18__ {unsigned int i_visible_lines; unsigned int i_visible_pitch; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 size_t U_PLANE ; 
 size_t V_PLANE ; 
 size_t Y_PLANE ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  uint16_t ; 
 int /*<<< orphan*/  uint8_t ; 

__attribute__((used)) static picture_t *FUNC6( filter_t *p_filter, picture_t *p_pic )
{
    picture_t *p_outpic;
    const int v1 = -1;
    const int v2 = 3; /* 2^3 = 8 */
    const unsigned i_visible_lines = p_pic->p[Y_PLANE].i_visible_lines;
    const unsigned i_visible_pitch = p_pic->p[Y_PLANE].i_visible_pitch;

    p_outpic = FUNC3( p_filter );
    if( !p_outpic )
    {
        FUNC4( p_pic );
        return NULL;
    }

    filter_sys_t *p_sys = p_filter->p_sys;

    if (!FUNC1(p_pic->format.i_chroma))
        FUNC2(255, uint8_t);
    else
        FUNC2(1023, uint16_t);

    FUNC5( &p_outpic->p[U_PLANE], &p_pic->p[U_PLANE] );
    FUNC5( &p_outpic->p[V_PLANE], &p_pic->p[V_PLANE] );

    return FUNC0( p_outpic, p_pic );
}