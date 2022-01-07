
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_media_source_t ;
struct TYPE_5__ {int media_sources; int lock; } ;
typedef TYPE_1__ vlc_media_source_provider_t ;
struct TYPE_6__ {int node; } ;


 TYPE_4__* ms_priv (int *) ;
 scalar_t__ unlikely (int) ;
 int vlc_list_append (int *,int *) ;
 int * vlc_media_source_New (TYPE_1__*,char const*) ;
 int vlc_mutex_assert (int *) ;

__attribute__((used)) static vlc_media_source_t *
vlc_media_source_provider_Add(vlc_media_source_provider_t *provider,
                              const char *name)
{
    vlc_mutex_assert(&provider->lock);

    vlc_media_source_t *ms = vlc_media_source_New(provider, name);
    if (unlikely(!ms))
        return ((void*)0);

    vlc_list_append(&ms_priv(ms)->node, &provider->media_sources);
    return ms;
}
