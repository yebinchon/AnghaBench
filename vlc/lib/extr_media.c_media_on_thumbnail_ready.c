
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int picture_t ;
typedef int libvlc_picture_t ;
struct TYPE_11__ {int crop; int height; int width; int type; TYPE_5__* md; } ;
typedef TYPE_4__ libvlc_media_thumbnail_request_t ;
struct TYPE_12__ {int event_manager; TYPE_1__* p_libvlc_instance; } ;
typedef TYPE_5__ libvlc_media_t ;
struct TYPE_9__ {int * p_thumbnail; } ;
struct TYPE_10__ {TYPE_2__ media_thumbnail_generated; } ;
struct TYPE_13__ {TYPE_3__ u; int type; } ;
typedef TYPE_6__ libvlc_event_t ;
struct TYPE_8__ {int p_libvlc_int; } ;


 int VLC_OBJECT (int ) ;
 int libvlc_MediaThumbnailGenerated ;
 int libvlc_event_send (int *,TYPE_6__*) ;
 int * libvlc_picture_new (int ,int *,int ,int ,int ,int ) ;
 int libvlc_picture_release (int *) ;

__attribute__((used)) static void media_on_thumbnail_ready( void* data, picture_t* thumbnail )
{
    libvlc_media_thumbnail_request_t *req = data;
    libvlc_media_t *p_media = req->md;
    libvlc_event_t event;
    event.type = libvlc_MediaThumbnailGenerated;
    libvlc_picture_t* pic = ((void*)0);
    if ( thumbnail != ((void*)0) )
        pic = libvlc_picture_new( VLC_OBJECT(p_media->p_libvlc_instance->p_libvlc_int),
                                    thumbnail, req->type, req->width, req->height,
                                    req->crop );
    event.u.media_thumbnail_generated.p_thumbnail = pic;
    libvlc_event_send( &p_media->event_manager, &event );
    if ( pic != ((void*)0) )
        libvlc_picture_release( pic );
}
