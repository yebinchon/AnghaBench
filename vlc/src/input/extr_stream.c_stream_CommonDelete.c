
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_iconv_t ;
struct TYPE_7__ {int psz_url; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_6__ {scalar_t__ conv; } ;
struct TYPE_8__ {int * block; int * peek; TYPE_1__ text; } ;
typedef TYPE_3__ stream_priv_t ;


 int block_Release (int *) ;
 int free (int ) ;
 int vlc_iconv_close (scalar_t__) ;
 int vlc_object_delete (TYPE_2__*) ;

void stream_CommonDelete(stream_t *s)
{
    stream_priv_t *priv = (stream_priv_t *)s;

    if (priv->text.conv != (vlc_iconv_t)(-1))
        vlc_iconv_close(priv->text.conv);

    if (priv->peek != ((void*)0))
        block_Release(priv->peek);
    if (priv->block != ((void*)0))
        block_Release(priv->block);

    free(s->psz_url);
    vlc_object_delete(s);
}
