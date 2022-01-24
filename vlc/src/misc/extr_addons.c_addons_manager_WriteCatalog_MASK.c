#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_13__ {int no_interact; } ;
struct TYPE_17__ {int (* pf_catalog ) (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__ obj; } ;
typedef  TYPE_5__ addons_storage_t ;
struct TYPE_18__ {TYPE_4__* p_priv; } ;
typedef  TYPE_6__ addons_manager_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_size; int /*<<< orphan*/  p_elems; } ;
struct TYPE_15__ {int /*<<< orphan*/  lock; TYPE_2__ entries; } ;
struct TYPE_16__ {TYPE_3__ finder; int /*<<< orphan*/  p_parent; } ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_5__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC7( addons_manager_t *p_manager )
{
    int i_return = VLC_EGENERIC;

    addons_storage_t *p_storage =
        FUNC3( p_manager->p_priv->p_parent, sizeof( *p_storage ), "entries storage" );
    p_storage->obj.no_interact = true;

    module_t *p_module = FUNC0( p_storage, "addons storage",
                                      "addons.store.install", true );
    if( p_module )
    {
        FUNC4( &p_manager->p_priv->finder.lock );
        i_return = p_storage->pf_catalog( p_storage, p_manager->p_priv->finder.entries.p_elems,
                                          p_manager->p_priv->finder.entries.i_size );
        FUNC5( &p_manager->p_priv->finder.lock );
        FUNC1( p_storage, p_module );
    }
    FUNC6(p_storage);

    return i_return;
}