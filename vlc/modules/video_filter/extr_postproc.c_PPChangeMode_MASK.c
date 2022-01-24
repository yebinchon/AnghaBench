#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pp_mode ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pp_mode; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( filter_t *p_filter, const char *psz_name,
                          int i_quality )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    pp_mode *newmode = NULL, *oldmode;

    if( i_quality > 0 )
    {
         newmode = FUNC2( psz_name ? psz_name :
                                                    "default", i_quality );
         if( newmode == NULL )
         {
             FUNC0( p_filter, "Error while changing post processing mode. "
                       "Keeping previous mode." );
             return;
        }
    }

    FUNC3( &p_sys->lock );
    oldmode = p_sys->pp_mode;
    p_sys->pp_mode = newmode;
    FUNC4( &p_sys->lock );

    FUNC1( oldmode );
}