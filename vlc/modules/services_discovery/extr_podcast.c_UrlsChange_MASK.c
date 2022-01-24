#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char const* vlc_value_t ;
typedef  char const vlc_object_t ;
struct TYPE_2__ {int b_update; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  update_type; } ;
typedef  TYPE_1__ services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  UPDATE_URLS ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( vlc_object_t *p_this, char const *psz_var,
                       vlc_value_t oldval, vlc_value_t newval,
                       void *p_data )
{
    FUNC0(p_this); FUNC0(psz_var); FUNC0(oldval);
    FUNC0(newval);
    services_discovery_sys_t *p_sys  = (services_discovery_sys_t *)p_data;

    FUNC2( &p_sys->lock );
    p_sys->b_update = true;
    p_sys->update_type = UPDATE_URLS;
    FUNC1( &p_sys->wait );
    FUNC3( &p_sys->lock );
    return VLC_SUCCESS;
}