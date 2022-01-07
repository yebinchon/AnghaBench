
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_module; } ;
typedef TYPE_1__ vlc_keystore ;


 int assert (TYPE_1__*) ;
 int module_unneed (TYPE_1__*,int ) ;
 int vlc_object_delete (TYPE_1__*) ;

void
vlc_keystore_release(vlc_keystore *p_keystore)
{
    assert(p_keystore);
    module_unneed(p_keystore, p_keystore->p_module);

    vlc_object_delete(p_keystore);
}
