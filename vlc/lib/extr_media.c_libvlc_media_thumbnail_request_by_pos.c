
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ libvlc_time_t ;
typedef scalar_t__ libvlc_thumbnailer_seek_speed_t ;
struct TYPE_15__ {int * p_thumbnailer; } ;
typedef TYPE_2__ libvlc_priv_t ;
typedef int libvlc_picture_type_t ;
struct TYPE_16__ {unsigned int width; unsigned int height; int crop; int * req; int type; TYPE_4__* md; } ;
typedef TYPE_3__ libvlc_media_thumbnail_request_t ;
struct TYPE_17__ {int p_input_item; TYPE_1__* p_libvlc_instance; } ;
typedef TYPE_4__ libvlc_media_t ;
struct TYPE_14__ {int p_libvlc_int; } ;


 int VLC_THUMBNAILER_SEEK_FAST ;
 int VLC_THUMBNAILER_SEEK_PRECISE ;
 int VLC_TICK_FROM_MS (scalar_t__) ;
 int VLC_TICK_INVALID ;
 int assert (TYPE_4__*) ;
 int free (TYPE_3__*) ;
 int libvlc_media_release (TYPE_4__*) ;
 int libvlc_media_retain (TYPE_4__*) ;
 scalar_t__ libvlc_media_thumbnail_seek_fast ;
 TYPE_2__* libvlc_priv (int ) ;
 TYPE_3__* malloc (int) ;
 int media_on_thumbnail_ready ;
 scalar_t__ unlikely (int ) ;
 int * vlc_thumbnailer_RequestByPos (int *,float,int ,int ,int ,int ,TYPE_3__*) ;

libvlc_media_thumbnail_request_t*
libvlc_media_thumbnail_request_by_pos( libvlc_media_t *md, float pos,
                                       libvlc_thumbnailer_seek_speed_t speed,
                                       unsigned int width, unsigned int height,
                                       bool crop, libvlc_picture_type_t picture_type,
                                       libvlc_time_t timeout )
{
    assert( md );
    libvlc_priv_t *priv = libvlc_priv(md->p_libvlc_instance->p_libvlc_int);
    if( unlikely( priv->p_thumbnailer == ((void*)0) ) )
        return ((void*)0);
    libvlc_media_thumbnail_request_t *req = malloc( sizeof( *req ) );
    if ( unlikely( req == ((void*)0) ) )
        return ((void*)0);

    req->md = md;
    req->width = width;
    req->height = height;
    req->crop = crop;
    req->type = picture_type;
    libvlc_media_retain( md );
    req->req = vlc_thumbnailer_RequestByPos( priv->p_thumbnailer, pos,
        speed == libvlc_media_thumbnail_seek_fast ?
            VLC_THUMBNAILER_SEEK_FAST : VLC_THUMBNAILER_SEEK_PRECISE,
        md->p_input_item,
        timeout > 0 ? VLC_TICK_FROM_MS( timeout ) : VLC_TICK_INVALID,
        media_on_thumbnail_ready, req );
    if ( req->req == ((void*)0) )
    {
        free( req );
        libvlc_media_release( md );
        return ((void*)0);
    }
    return req;
}
