
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gsize ;
typedef int * gpointer ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_2__ parent; TYPE_1__* p_plane; scalar_t__ p_pic; } ;
struct TYPE_4__ {scalar_t__ p_pixels; } ;
typedef TYPE_3__ GstVlcPicturePlane ;
typedef int GstMemory ;
typedef int GstMapFlags ;


 int VLC_UNUSED (int ) ;

__attribute__((used)) static gpointer gst_vlc_picture_plane_map( GstMemory *p_gmem,
    gsize i_maxsize, GstMapFlags flags )
{
    VLC_UNUSED( i_maxsize );
    VLC_UNUSED( flags );
    GstVlcPicturePlane* p_mem = (GstVlcPicturePlane*) p_gmem;

    if( p_mem->p_pic )
        return (gpointer) (p_mem->p_plane->p_pixels + p_mem->parent.offset);
    else
        return ((void*)0);
}
