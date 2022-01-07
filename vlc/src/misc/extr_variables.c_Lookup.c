
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int var_root; int var_lock; } ;
typedef TYPE_1__ vlc_object_internals_t ;
typedef void variable_t ;


 void** tfind (char const**,int *,int ) ;
 int varcmp ;
 TYPE_1__* vlc_internals (int *) ;
 int vlc_mutex_lock (int *) ;

__attribute__((used)) static variable_t *Lookup( vlc_object_t *obj, const char *psz_name )
{
    vlc_object_internals_t *priv = vlc_internals( obj );
    void **pp_var;

    vlc_mutex_lock(&priv->var_lock);
    pp_var = tfind( &psz_name, &priv->var_root, varcmp );
    return (pp_var != ((void*)0)) ? *pp_var : ((void*)0);
}
