#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  (* addon_changed ) (TYPE_4__*,TYPE_5__*) ;} ;
struct TYPE_22__ {TYPE_3__* p_priv; TYPE_1__ owner; } ;
typedef  TYPE_4__ addons_manager_t ;
struct TYPE_23__ {scalar_t__ e_state; int /*<<< orphan*/  lock; } ;
typedef  TYPE_5__ addon_entry_t ;
struct TYPE_18__ {TYPE_5__** p_elems; int /*<<< orphan*/  i_size; } ;
struct TYPE_20__ {int /*<<< orphan*/  lock; TYPE_17__ entries; scalar_t__ b_live; int /*<<< orphan*/  waitcond; int /*<<< orphan*/  p_interrupt; } ;
struct TYPE_21__ {TYPE_2__ installer; } ;

/* Variables and functions */
 scalar_t__ ADDON_INSTALLED ; 
 scalar_t__ ADDON_INSTALLING ; 
 scalar_t__ ADDON_NOTINSTALLED ; 
 scalar_t__ ADDON_UNINSTALLING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_17__,int /*<<< orphan*/ ) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  installer_thread_interrupted ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 () ; 

__attribute__((used)) static void *FUNC16( void *p_data )
{
    addons_manager_t *p_manager = p_data;
    int i_cancel = FUNC15();
    FUNC10( p_manager->p_priv->installer.p_interrupt );
    int i_ret;

    FUNC12( &p_manager->p_priv->installer.lock );
    while( p_manager->p_priv->installer.b_live )
    {
        FUNC9( installer_thread_interrupted, p_data );
        while ( !p_manager->p_priv->installer.entries.i_size &&
                p_manager->p_priv->installer.b_live )
        {
            /* No queued addons */
            FUNC8( &p_manager->p_priv->installer.waitcond,
                           &p_manager->p_priv->installer.lock );
        }
        FUNC11();
        if( !p_manager->p_priv->installer.b_live )
            break;

        addon_entry_t *p_entry = p_manager->p_priv->installer.entries.p_elems[0];
        FUNC0( p_manager->p_priv->installer.entries, 0 );
        FUNC1( p_entry );
        FUNC13( &p_manager->p_priv->installer.lock );

        FUNC12( &p_entry->lock );
        /* DO WORK */
        if ( p_entry->e_state == ADDON_INSTALLED )
        {
            p_entry->e_state = ADDON_UNINSTALLING;
            FUNC13( &p_entry->lock );

            /* notify */
            p_manager->owner.addon_changed( p_manager, p_entry );

            i_ret = FUNC4( p_manager, p_entry, false );

            FUNC12( &p_entry->lock );
            p_entry->e_state = ( i_ret == VLC_SUCCESS ) ? ADDON_NOTINSTALLED
                                                        : ADDON_INSTALLED;
        }
        else if ( p_entry->e_state == ADDON_NOTINSTALLED )
        {
            p_entry->e_state = ADDON_INSTALLING;
            FUNC13( &p_entry->lock );

            /* notify */
            p_manager->owner.addon_changed( p_manager, p_entry );

            i_ret = FUNC4( p_manager, p_entry, true );

            FUNC12( &p_entry->lock );
            p_entry->e_state = ( i_ret == VLC_SUCCESS ) ? ADDON_INSTALLED
                                                        : ADDON_NOTINSTALLED;
        }
        FUNC13( &p_entry->lock );
        /* !DO WORK */

        p_manager->owner.addon_changed( p_manager, p_entry );

        FUNC2( p_entry );

        FUNC3( p_manager );
        FUNC12( &p_manager->p_priv->installer.lock );
    }
    FUNC13( &p_manager->p_priv->installer.lock );
    FUNC14( i_cancel );
    return NULL;
}