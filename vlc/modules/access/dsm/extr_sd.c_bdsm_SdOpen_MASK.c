#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; int /*<<< orphan*/  description; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_7__ {int /*<<< orphan*/ * p_ns; int /*<<< orphan*/  entry_item_list; } ;
typedef  TYPE_2__ services_discovery_sys_t ;
struct TYPE_8__ {int /*<<< orphan*/  pf_on_entry_removed; int /*<<< orphan*/  pf_on_entry_added; TYPE_1__* p_opaque; } ;
typedef  TYPE_3__ netbios_ns_discover_callbacks ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_TIMEOUT ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  netbios_ns_discover_on_entry_added ; 
 int /*<<< orphan*/  netbios_ns_discover_on_entry_removed ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6 (vlc_object_t *p_this)
{
    services_discovery_t *p_sd = (services_discovery_t *)p_this;
    services_discovery_sys_t *p_sys = FUNC2 (1, sizeof (*p_sys));
    netbios_ns_discover_callbacks callbacks;

    if( p_sys == NULL )
        return VLC_ENOMEM;

    p_sd->description = FUNC0("Windows networks");
    p_sd->p_sys = p_sys;
    FUNC5( &p_sys->entry_item_list );

    p_sys->p_ns = FUNC4();
    if( p_sys->p_ns == NULL )
        goto error;

    callbacks.p_opaque = p_sd;
    callbacks.pf_on_entry_added = netbios_ns_discover_on_entry_added;
    callbacks.pf_on_entry_removed = netbios_ns_discover_on_entry_removed;

    if( FUNC3( p_sys->p_ns, BROADCAST_TIMEOUT,
                                   &callbacks) != 0 )
        goto error;

    return VLC_SUCCESS;

    error:
        FUNC1( p_this );
        return VLC_EGENERIC;
}