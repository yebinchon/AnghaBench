
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_medialibrary_t ;
struct TYPE_3__ {int * p_media_library; } ;
typedef TYPE_1__ libvlc_priv_t ;


 TYPE_1__* libvlc_priv (int ) ;
 int vlc_object_instance (int *) ;

vlc_medialibrary_t* vlc_ml_instance_get( vlc_object_t* p_obj )
{
    libvlc_priv_t* p_priv = libvlc_priv( vlc_object_instance(p_obj) );
    return p_priv->p_media_library;
}
