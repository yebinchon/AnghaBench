
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int module_t ;
struct TYPE_13__ {int no_interact; } ;
struct TYPE_17__ {int (* pf_catalog ) (TYPE_5__*,int ,int ) ;TYPE_1__ obj; } ;
typedef TYPE_5__ addons_storage_t ;
struct TYPE_18__ {TYPE_4__* p_priv; } ;
typedef TYPE_6__ addons_manager_t ;
struct TYPE_14__ {int i_size; int p_elems; } ;
struct TYPE_15__ {int lock; TYPE_2__ entries; } ;
struct TYPE_16__ {TYPE_3__ finder; int p_parent; } ;


 int VLC_EGENERIC ;
 int * module_need (TYPE_5__*,char*,char*,int) ;
 int module_unneed (TYPE_5__*,int *) ;
 int stub1 (TYPE_5__*,int ,int ) ;
 TYPE_5__* vlc_custom_create (int ,int,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_object_delete (TYPE_5__*) ;

__attribute__((used)) static int addons_manager_WriteCatalog( addons_manager_t *p_manager )
{
    int i_return = VLC_EGENERIC;

    addons_storage_t *p_storage =
        vlc_custom_create( p_manager->p_priv->p_parent, sizeof( *p_storage ), "entries storage" );
    p_storage->obj.no_interact = 1;

    module_t *p_module = module_need( p_storage, "addons storage",
                                      "addons.store.install", 1 );
    if( p_module )
    {
        vlc_mutex_lock( &p_manager->p_priv->finder.lock );
        i_return = p_storage->pf_catalog( p_storage, p_manager->p_priv->finder.entries.p_elems,
                                          p_manager->p_priv->finder.entries.i_size );
        vlc_mutex_unlock( &p_manager->p_priv->finder.lock );
        module_unneed( p_storage, p_module );
    }
    vlc_object_delete(p_storage);

    return i_return;
}
