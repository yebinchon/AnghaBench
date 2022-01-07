
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_4__ {int * p_dec; } ;
typedef TYPE_1__ GstVlcPicturePlaneAllocator ;


 int GST_TYPE_VLC_PICTURE_PLANE_ALLOCATOR ;
 TYPE_1__* g_object_new (int ,int *) ;

GstVlcPicturePlaneAllocator* gst_vlc_picture_plane_allocator_new(
        decoder_t *p_dec )
{
    GstVlcPicturePlaneAllocator *p_allocator;

    p_allocator = g_object_new( GST_TYPE_VLC_PICTURE_PLANE_ALLOCATOR, ((void*)0));
    p_allocator->p_dec = p_dec;

    return p_allocator;
}
