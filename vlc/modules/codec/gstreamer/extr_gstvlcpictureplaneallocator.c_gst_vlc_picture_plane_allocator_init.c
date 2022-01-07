
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mem_copy; int mem_unmap; int mem_map; int mem_type; } ;
typedef int GstVlcPicturePlaneAllocator ;
typedef TYPE_1__ GstAllocator ;


 TYPE_1__* GST_ALLOCATOR_CAST (int *) ;
 int GST_ALLOCATOR_FLAG_CUSTOM_ALLOC ;
 int GST_OBJECT_FLAG_SET (int *,int ) ;
 int GST_VLC_PICTURE_PLANE_ALLOCATOR_NAME ;
 int gst_vlc_picture_plane_copy ;
 int gst_vlc_picture_plane_map ;
 int gst_vlc_picture_plane_unmap ;

__attribute__((used)) static void gst_vlc_picture_plane_allocator_init(
        GstVlcPicturePlaneAllocator *p_allocator )
{
    GstAllocator *p_alloc = GST_ALLOCATOR_CAST( p_allocator );

    p_alloc->mem_type = GST_VLC_PICTURE_PLANE_ALLOCATOR_NAME;
    p_alloc->mem_map = gst_vlc_picture_plane_map;
    p_alloc->mem_unmap = gst_vlc_picture_plane_unmap;
    p_alloc->mem_copy = gst_vlc_picture_plane_copy;


    GST_OBJECT_FLAG_SET( p_allocator, GST_ALLOCATOR_FLAG_CUSTOM_ALLOC );
}
