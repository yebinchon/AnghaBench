
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_media_source_t ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_1__ vlc_media_source_provider_t ;


 int vlc_media_source_Hold (int *) ;
 int * vlc_media_source_provider_Add (TYPE_1__*,char const*) ;
 int * vlc_media_source_provider_Find (TYPE_1__*,char const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

vlc_media_source_t *
vlc_media_source_provider_GetMediaSource(vlc_media_source_provider_t *provider,
                                         const char *name)
{
    vlc_mutex_lock(&provider->lock);
    vlc_media_source_t *ms = vlc_media_source_provider_Find(provider, name);
    if (ms)
        vlc_media_source_Hold(ms);
    else
        ms = vlc_media_source_provider_Add(provider, name);
    vlc_mutex_unlock(&provider->lock);

    return ms;
}
