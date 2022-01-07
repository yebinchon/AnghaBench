
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tree; } ;
typedef TYPE_1__ vlc_media_source_t ;
struct TYPE_9__ {int sd; int owner; } ;
typedef TYPE_2__ media_source_private_t ;


 int free (TYPE_2__*) ;
 TYPE_2__* ms_priv (TYPE_1__*) ;
 int vlc_media_source_provider_Remove (int ,TYPE_1__*) ;
 int vlc_media_tree_Release (int ) ;
 int vlc_sd_Destroy (int ) ;

__attribute__((used)) static void
vlc_media_source_Delete(vlc_media_source_t *ms)
{
    media_source_private_t *priv = ms_priv(ms);
    vlc_media_source_provider_Remove(priv->owner, ms);
    vlc_sd_Destroy(priv->sd);
    vlc_media_tree_Release(ms->tree);
    free(priv);
}
