
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int module_t ;
struct TYPE_17__ {TYPE_1__* p_priv; } ;
typedef TYPE_3__ addons_manager_t ;
struct TYPE_14__ {int i_size; int p_elems; } ;
struct TYPE_16__ {int no_interact; } ;
struct TYPE_18__ {TYPE_12__ entries; int (* pf_find ) (TYPE_4__*) ;int * psz_uri; TYPE_2__ obj; } ;
typedef TYPE_4__ addons_finder_t ;
struct TYPE_15__ {int p_parent; } ;


 int ARRAY_INIT (TYPE_12__) ;
 int ARRAY_RESET (TYPE_12__) ;
 int MergeSources (TYPE_3__*,int ,int ) ;
 int * module_need (TYPE_4__*,char*,char*,int) ;
 int module_unneed (TYPE_4__*,int *) ;
 int stub1 (TYPE_4__*) ;
 TYPE_4__* vlc_custom_create (int ,int,char*) ;
 int vlc_object_delete (TYPE_4__*) ;

__attribute__((used)) static void LoadLocalStorage( addons_manager_t *p_manager )
{
    addons_finder_t *p_finder =
        vlc_custom_create( p_manager->p_priv->p_parent, sizeof( *p_finder ), "entries finder" );
    p_finder->obj.no_interact = 1;

    module_t *p_module = module_need( p_finder, "addons finder",
                                      "addons.store.list", 1 );
    if( p_module )
    {
        ARRAY_INIT( p_finder->entries );
        p_finder->psz_uri = ((void*)0);
        p_finder->pf_find( p_finder );
        module_unneed( p_finder, p_module );

        MergeSources( p_manager, p_finder->entries.p_elems, p_finder->entries.i_size );

        ARRAY_RESET( p_finder->entries );
    }
    vlc_object_delete(p_finder);
}
