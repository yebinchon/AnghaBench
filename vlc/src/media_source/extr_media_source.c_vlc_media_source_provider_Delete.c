
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ vlc_media_source_provider_t ;


 int ReleaseObject (TYPE_1__*) ;
 int vlc_mutex_destroy (int *) ;

void
vlc_media_source_provider_Delete(vlc_media_source_provider_t *provider)
{
    vlc_mutex_destroy(&provider->lock);
    ReleaseObject(provider);
}
