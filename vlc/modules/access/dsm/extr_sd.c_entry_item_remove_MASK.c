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
struct entry_item {int /*<<< orphan*/  p_item; int /*<<< orphan*/ * p_entry; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int /*<<< orphan*/  entry_item_list; } ;
typedef  TYPE_2__ services_discovery_sys_t ;
typedef  int /*<<< orphan*/  netbios_ns_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 struct entry_item* FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC6( services_discovery_t *p_sd,
                               netbios_ns_entry *p_entry )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;

    for( size_t i = 0; i < FUNC3( &p_sys->entry_item_list ); i++ )
    {
        struct entry_item *p_entry_item;

        p_entry_item = FUNC4( &p_sys->entry_item_list, i );
        if( p_entry_item->p_entry == p_entry  )
        {
            FUNC2( p_sd, p_entry_item->p_item );
            FUNC1( p_entry_item->p_item );
            FUNC5( &p_sys->entry_item_list, i );
            FUNC0( p_entry_item );
            break;
        }
    }
}