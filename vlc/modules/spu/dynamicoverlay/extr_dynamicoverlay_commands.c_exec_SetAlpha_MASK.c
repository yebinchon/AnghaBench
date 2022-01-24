#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  b_active; int /*<<< orphan*/  i_alpha; } ;
typedef  TYPE_1__ overlay_t ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_12__ {int /*<<< orphan*/  b_updated; int /*<<< orphan*/  overlays; } ;
typedef  TYPE_3__ filter_sys_t ;
struct TYPE_13__ {int /*<<< orphan*/  i_alpha; int /*<<< orphan*/  i_id; } ;
typedef  TYPE_4__ commandparams_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC2( filter_t *p_filter,
                          const commandparams_t *p_params,
                          commandparams_t *p_results )
{
    FUNC1(p_results);
    filter_sys_t *p_sys = p_filter->p_sys;

    overlay_t *p_ovl = FUNC0( &p_sys->overlays, p_params->i_id );
    if( p_ovl == NULL )
        return VLC_EGENERIC;

    p_ovl->i_alpha = p_params->i_alpha;
    p_sys->b_updated = p_ovl->b_active;
    return VLC_SUCCESS;
}