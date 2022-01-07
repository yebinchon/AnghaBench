
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_media_source_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ vlc_media_source_provider_t ;
struct TYPE_5__ {int node; } ;


 TYPE_3__* ms_priv (int *) ;
 int vlc_list_remove (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void
vlc_media_source_provider_Remove(vlc_media_source_provider_t *provider,
                                 vlc_media_source_t *ms)
{
    vlc_mutex_lock(&provider->lock);
    vlc_list_remove(&ms_priv(ms)->node);
    vlc_mutex_unlock(&provider->lock);
}
