
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


struct TYPE_19__ {int (* addon_changed ) (TYPE_4__*,TYPE_5__*) ;} ;
struct TYPE_22__ {TYPE_3__* p_priv; TYPE_1__ owner; } ;
typedef TYPE_4__ addons_manager_t ;
struct TYPE_23__ {scalar_t__ e_state; int lock; } ;
typedef TYPE_5__ addon_entry_t ;
struct TYPE_18__ {TYPE_5__** p_elems; int i_size; } ;
struct TYPE_20__ {int lock; TYPE_17__ entries; scalar_t__ b_live; int waitcond; int p_interrupt; } ;
struct TYPE_21__ {TYPE_2__ installer; } ;


 scalar_t__ ADDON_INSTALLED ;
 scalar_t__ ADDON_INSTALLING ;
 scalar_t__ ADDON_NOTINSTALLED ;
 scalar_t__ ADDON_UNINSTALLING ;
 int ARRAY_REMOVE (TYPE_17__,int ) ;
 int VLC_SUCCESS ;
 int addon_entry_Hold (TYPE_5__*) ;
 int addon_entry_Release (TYPE_5__*) ;
 int addons_manager_WriteCatalog (TYPE_4__*) ;
 int installOrRemoveAddon (TYPE_4__*,TYPE_5__*,int) ;
 int installer_thread_interrupted ;
 int stub1 (TYPE_4__*,TYPE_5__*) ;
 int stub2 (TYPE_4__*,TYPE_5__*) ;
 int stub3 (TYPE_4__*,TYPE_5__*) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_interrupt_register (int ,void*) ;
 int vlc_interrupt_set (int ) ;
 int vlc_interrupt_unregister () ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *InstallerThread( void *p_data )
{
    addons_manager_t *p_manager = p_data;
    int i_cancel = vlc_savecancel();
    vlc_interrupt_set( p_manager->p_priv->installer.p_interrupt );
    int i_ret;

    vlc_mutex_lock( &p_manager->p_priv->installer.lock );
    while( p_manager->p_priv->installer.b_live )
    {
        vlc_interrupt_register( installer_thread_interrupted, p_data );
        while ( !p_manager->p_priv->installer.entries.i_size &&
                p_manager->p_priv->installer.b_live )
        {

            vlc_cond_wait( &p_manager->p_priv->installer.waitcond,
                           &p_manager->p_priv->installer.lock );
        }
        vlc_interrupt_unregister();
        if( !p_manager->p_priv->installer.b_live )
            break;

        addon_entry_t *p_entry = p_manager->p_priv->installer.entries.p_elems[0];
        ARRAY_REMOVE( p_manager->p_priv->installer.entries, 0 );
        addon_entry_Hold( p_entry );
        vlc_mutex_unlock( &p_manager->p_priv->installer.lock );

        vlc_mutex_lock( &p_entry->lock );

        if ( p_entry->e_state == ADDON_INSTALLED )
        {
            p_entry->e_state = ADDON_UNINSTALLING;
            vlc_mutex_unlock( &p_entry->lock );


            p_manager->owner.addon_changed( p_manager, p_entry );

            i_ret = installOrRemoveAddon( p_manager, p_entry, 0 );

            vlc_mutex_lock( &p_entry->lock );
            p_entry->e_state = ( i_ret == VLC_SUCCESS ) ? ADDON_NOTINSTALLED
                                                        : ADDON_INSTALLED;
        }
        else if ( p_entry->e_state == ADDON_NOTINSTALLED )
        {
            p_entry->e_state = ADDON_INSTALLING;
            vlc_mutex_unlock( &p_entry->lock );


            p_manager->owner.addon_changed( p_manager, p_entry );

            i_ret = installOrRemoveAddon( p_manager, p_entry, 1 );

            vlc_mutex_lock( &p_entry->lock );
            p_entry->e_state = ( i_ret == VLC_SUCCESS ) ? ADDON_INSTALLED
                                                        : ADDON_NOTINSTALLED;
        }
        vlc_mutex_unlock( &p_entry->lock );


        p_manager->owner.addon_changed( p_manager, p_entry );

        addon_entry_Release( p_entry );

        addons_manager_WriteCatalog( p_manager );
        vlc_mutex_lock( &p_manager->p_priv->installer.lock );
    }
    vlc_mutex_unlock( &p_manager->p_priv->installer.lock );
    vlc_restorecancel( i_cancel );
    return ((void*)0);
}
