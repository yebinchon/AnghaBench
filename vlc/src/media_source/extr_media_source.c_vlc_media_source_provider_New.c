
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int media_sources; int lock; } ;
typedef TYPE_1__ vlc_media_source_provider_t ;


 TYPE_1__* CreateObject (int *,int,char*) ;
 scalar_t__ unlikely (int) ;
 int vlc_list_init (int *) ;
 int vlc_mutex_init (int *) ;

vlc_media_source_provider_t *
vlc_media_source_provider_New(vlc_object_t *parent)
{
    vlc_media_source_provider_t *provider =
            CreateObject(parent, sizeof(*provider), "media-source-provider");
    if (unlikely(!provider))
        return ((void*)0);

    vlc_mutex_init(&provider->lock);
    vlc_list_init(&provider->media_sources);
    return provider;
}
