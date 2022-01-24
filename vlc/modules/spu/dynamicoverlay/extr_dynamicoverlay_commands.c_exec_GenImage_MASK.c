#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  overlay_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_9__ {int /*<<< orphan*/  overlays; } ;
typedef  TYPE_2__ filter_sys_t ;
struct TYPE_10__ {scalar_t__ i_id; } ;
typedef  TYPE_3__ commandparams_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 

__attribute__((used)) static int FUNC3( filter_t *p_filter,
                          const commandparams_t *p_params,
                          commandparams_t *p_results )
{
    FUNC2(p_params);
    filter_sys_t *p_sys = p_filter->p_sys;

    overlay_t *p_ovl = FUNC1();
    if( p_ovl == NULL )
        return VLC_ENOMEM;

    ssize_t i_idx = FUNC0( &p_sys->overlays, p_ovl );
    if( i_idx < 0 )
        return i_idx;

    p_results->i_id = i_idx;
    return VLC_SUCCESS;
}