
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* finalize ) (int *) ;} ;
typedef int GstVlcPicturePlaneAllocator ;
typedef int GObject ;


 int * GST_VLC_PICTURE_PLANE_ALLOCATOR (int *) ;
 TYPE_1__* G_OBJECT_CLASS (int ) ;
 int VLC_UNUSED (int *) ;
 int parent_class ;
 int stub1 (int *) ;

__attribute__((used)) static void gst_vlc_picture_plane_allocator_finalize( GObject *p_object )
{
    GstVlcPicturePlaneAllocator *p_alloc = GST_VLC_PICTURE_PLANE_ALLOCATOR(
            p_object );
    VLC_UNUSED( p_alloc );

    G_OBJECT_CLASS (parent_class)->finalize( p_object );
}
