
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int vlc_keystore ;


 int assert (int *) ;
 int free (char*) ;
 int * keystore_create (int *,char*) ;
 char* var_InheritString (int *,char*) ;

vlc_keystore *
vlc_keystore_create(vlc_object_t *p_parent)
{
    assert(p_parent);

    char *modlist = var_InheritString(p_parent, "keystore");
    vlc_keystore *p_keystore = keystore_create(p_parent, modlist);

    free(modlist);
    return p_keystore;
}
