
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * var_root; } ;
typedef TYPE_1__ vlc_object_internals_t ;


 int CleanupVar ;
 int tdestroy (int *,int ) ;
 TYPE_1__* vlc_internals (int *) ;

void var_DestroyAll( vlc_object_t *obj )
{
    vlc_object_internals_t *priv = vlc_internals( obj );

    tdestroy( priv->var_root, CleanupVar );
    priv->var_root = ((void*)0);
}
