#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* pf_sepia ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  i_intensity; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static picture_t *FUNC6( filter_t *p_filter, picture_t *p_pic )
{
    picture_t *p_outpic;

    if( !p_pic ) return NULL;

    filter_sys_t *p_sys = p_filter->p_sys;
    int intensity = FUNC1( &p_sys->i_intensity );

    p_outpic = FUNC2( p_filter );
    if( !p_outpic )
    {
        FUNC3( p_filter, "can't get output picture" );
        FUNC4( p_pic );
        return NULL;
    }

    p_sys->pf_sepia( p_pic, p_outpic, intensity );

    return FUNC0( p_outpic, p_pic );
}