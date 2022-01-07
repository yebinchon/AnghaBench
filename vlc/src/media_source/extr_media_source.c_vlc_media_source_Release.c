
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_media_source_t ;
struct TYPE_3__ {int rc; } ;
typedef TYPE_1__ media_source_private_t ;


 TYPE_1__* ms_priv (int *) ;
 scalar_t__ vlc_atomic_rc_dec (int *) ;
 int vlc_media_source_Delete (int *) ;

void
vlc_media_source_Release(vlc_media_source_t *ms)
{
    media_source_private_t *priv = ms_priv(ms);
    if (vlc_atomic_rc_dec(&priv->rc))
        vlc_media_source_Delete(ms);
}
