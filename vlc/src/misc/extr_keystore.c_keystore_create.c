
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int pf_remove; int pf_find; int pf_store; int * p_module; } ;
typedef TYPE_1__ vlc_keystore ;


 int assert (int ) ;
 int * module_need (TYPE_1__*,char*,char const*,int) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

__attribute__((used)) static vlc_keystore *
keystore_create(vlc_object_t *p_parent, const char *psz_name)
{
    vlc_keystore *p_keystore = vlc_custom_create(p_parent, sizeof (*p_keystore),
                                                 "keystore");
    if (unlikely(p_keystore == ((void*)0)))
        return ((void*)0);

    p_keystore->p_module = module_need(p_keystore, "keystore", psz_name, 1);
    if (p_keystore->p_module == ((void*)0))
    {
        vlc_object_delete(p_keystore);
        return ((void*)0);
    }
    assert(p_keystore->pf_store);
    assert(p_keystore->pf_find);
    assert(p_keystore->pf_remove);

    return p_keystore;
}
