
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * p_thumbnailer; } ;
typedef TYPE_3__ libvlc_priv_t ;
struct TYPE_10__ {int req; TYPE_2__* md; } ;
typedef TYPE_4__ libvlc_media_thumbnail_request_t ;
struct TYPE_8__ {TYPE_1__* p_libvlc_instance; } ;
struct TYPE_7__ {int p_libvlc_int; } ;


 int assert (int ) ;
 TYPE_3__* libvlc_priv (int ) ;
 int vlc_thumbnailer_Cancel (int *,int ) ;

void libvlc_media_thumbnail_request_cancel( libvlc_media_thumbnail_request_t *req )
{
    libvlc_priv_t *p_priv = libvlc_priv(req->md->p_libvlc_instance->p_libvlc_int);
    assert( p_priv->p_thumbnailer != ((void*)0) );
    vlc_thumbnailer_Cancel( p_priv->p_thumbnailer, req->req );
}
