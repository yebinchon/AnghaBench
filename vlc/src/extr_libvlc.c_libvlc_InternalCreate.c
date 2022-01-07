
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vlc_custom_create ;
struct TYPE_3__ {int exit; int * media_source_provider; int * p_vlm; int * main_playlist; int * interfaces; int lock; } ;
typedef TYPE_1__ libvlc_priv_t ;
typedef int libvlc_int_t ;


 TYPE_1__* libvlc_priv (int *) ;
 int vlc_ExitInit (int *) ;
 int vlc_mutex_init (int *) ;

libvlc_int_t * libvlc_InternalCreate( void )
{
    libvlc_int_t *p_libvlc;
    libvlc_priv_t *priv;


    p_libvlc = (vlc_custom_create)( ((void*)0), sizeof (*priv), "libvlc" );
    if( p_libvlc == ((void*)0) )
        return ((void*)0);

    priv = libvlc_priv (p_libvlc);
    vlc_mutex_init(&priv->lock);
    priv->interfaces = ((void*)0);
    priv->main_playlist = ((void*)0);
    priv->p_vlm = ((void*)0);
    priv->media_source_provider = ((void*)0);

    vlc_ExitInit( &priv->exit );

    return p_libvlc;
}
