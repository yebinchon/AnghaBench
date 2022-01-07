
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int exit; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;


 TYPE_1__* libvlc_priv (int *) ;
 int vlc_ExitDestroy (int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_object_delete (int *) ;

void libvlc_InternalDestroy( libvlc_int_t *p_libvlc )
{
    libvlc_priv_t *priv = libvlc_priv( p_libvlc );

    vlc_ExitDestroy( &priv->exit );

    vlc_mutex_destroy(&priv->lock);
    vlc_object_delete(p_libvlc);
}
