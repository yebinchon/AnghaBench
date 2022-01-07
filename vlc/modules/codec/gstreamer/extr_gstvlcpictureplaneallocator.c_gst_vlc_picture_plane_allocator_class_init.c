
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int finalize; } ;
struct TYPE_3__ {int free; int alloc; } ;
typedef int GstVlcPicturePlaneAllocatorClass ;
typedef TYPE_1__ GstAllocatorClass ;
typedef TYPE_2__ GObjectClass ;


 int gst_vlc_picture_plane_allocator_dummy_alloc ;
 int gst_vlc_picture_plane_allocator_finalize ;
 int gst_vlc_picture_plane_allocator_free ;

__attribute__((used)) static void gst_vlc_picture_plane_allocator_class_init(
    GstVlcPicturePlaneAllocatorClass *p_klass )
{
    GObjectClass *p_gobject_class;
    GstAllocatorClass *p_allocator_class;

    p_gobject_class = (GObjectClass*) p_klass;
    p_allocator_class = (GstAllocatorClass*) p_klass;

    p_gobject_class->finalize = gst_vlc_picture_plane_allocator_finalize;

    p_allocator_class->alloc = gst_vlc_picture_plane_allocator_dummy_alloc;
    p_allocator_class->free = gst_vlc_picture_plane_allocator_free;
}
