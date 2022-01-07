
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int md; } ;
typedef TYPE_1__ libvlc_media_thumbnail_request_t ;


 int free (TYPE_1__*) ;
 int libvlc_media_release (int ) ;

void libvlc_media_thumbnail_request_destroy( libvlc_media_thumbnail_request_t *req )
{
    libvlc_media_release( req->md );
    free( req );
}
