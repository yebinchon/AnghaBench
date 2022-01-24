#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_16__ {int no_interact; } ;
struct TYPE_18__ {int (* pf_install ) (TYPE_3__*,TYPE_5__*) ;int (* pf_remove ) (TYPE_3__*,TYPE_5__*) ;TYPE_1__ obj; } ;
typedef  TYPE_3__ addons_storage_t ;
struct TYPE_19__ {TYPE_2__* p_priv; } ;
typedef  TYPE_4__ addons_manager_t ;
struct TYPE_20__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  e_flags; } ;
typedef  TYPE_5__ addon_entry_t ;
struct TYPE_17__ {int /*<<< orphan*/  p_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDON_MANAGEABLE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (TYPE_3__*,TYPE_5__*) ; 
 int FUNC4 (TYPE_3__*,TYPE_5__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9( addons_manager_t *p_manager, addon_entry_t *p_entry, bool b_install )
{
    int i_return = VLC_EGENERIC;

    addons_storage_t *p_storage =
        FUNC5( p_manager->p_priv->p_parent, sizeof( *p_storage ), "entries storage" );
    p_storage->obj.no_interact = true;

    module_t *p_module = FUNC0( p_storage, "addons storage",
                                      "addons.store.install", true );
    if( p_module )
    {
        if ( b_install )
            i_return = p_storage->pf_install( p_storage, p_entry );
        else
            i_return = p_storage->pf_remove( p_storage, p_entry );
        FUNC1( p_storage, p_module );
        FUNC2( p_manager->p_priv->p_parent, "InstallAddon returns %d", i_return );
        if ( i_return == VLC_SUCCESS )
        {
            /* Reset flags */
            FUNC6( &p_entry->lock );
            p_entry->e_flags = ADDON_MANAGEABLE;
            FUNC7( &p_entry->lock );
        }
    }
    FUNC8(p_storage);

    return i_return;
}