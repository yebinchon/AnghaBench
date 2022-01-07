
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int map; int global_map; } ;
typedef TYPE_1__ vlc_actions_t ;
typedef int libvlc_int_t ;
struct TYPE_6__ {TYPE_1__* actions; } ;


 int assert (int ) ;
 int free (TYPE_1__*) ;
 TYPE_3__* libvlc_priv (int *) ;
 int tdestroy (int ,int (*) (TYPE_1__*)) ;
 scalar_t__ unlikely (int ) ;
 int var_DelCallback (int *,char*,int ,int *) ;
 int vlc_key_to_action ;

void libvlc_InternalActionsClean (libvlc_int_t *libvlc)
{
    assert(libvlc != ((void*)0));

    vlc_actions_t *as = libvlc_priv(libvlc)->actions;
    if (unlikely(as == ((void*)0)))
        return;

    var_DelCallback (libvlc, "global-key-pressed", vlc_key_to_action,
                     &as->global_map);
    var_DelCallback (libvlc, "key-pressed", vlc_key_to_action, &as->map);

    tdestroy (as->global_map, free);
    tdestroy (as->map, free);
    free (as);
    libvlc_priv(libvlc)->actions = ((void*)0);
}
