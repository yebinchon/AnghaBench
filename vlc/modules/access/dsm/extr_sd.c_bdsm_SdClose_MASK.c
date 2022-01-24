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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct entry_item {int /*<<< orphan*/  entry_item_list; int /*<<< orphan*/  p_item; scalar_t__ p_ns; } ;
struct TYPE_2__ {struct entry_item* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
typedef  struct entry_item services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 struct entry_item* FUNC6 (int /*<<< orphan*/ *,size_t) ; 

void FUNC7 (vlc_object_t *p_this)
{
    services_discovery_t *sd = (services_discovery_t *)p_this;
    services_discovery_sys_t *p_sys = sd->p_sys;

    if( p_sys == NULL )
        return;

    if( p_sys->p_ns )
    {
        FUNC3( p_sys->p_ns );
        FUNC2( p_sys->p_ns );
    }

    for( size_t i = 0; i < FUNC5( &p_sys->entry_item_list ); i++ )
    {
        struct entry_item *p_entry_item;

        p_entry_item = FUNC6( &p_sys->entry_item_list, i );
        FUNC1( p_entry_item->p_item );
        FUNC0( p_entry_item );
    }
    FUNC4( &p_sys->entry_item_list );

    FUNC0( p_sys );
}