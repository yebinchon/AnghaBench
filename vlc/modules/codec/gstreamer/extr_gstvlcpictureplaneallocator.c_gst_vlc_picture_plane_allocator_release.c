
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ guint ;
struct TYPE_2__ {int * p_plane; int * p_pic; } ;
typedef int GstVlcPicturePlaneAllocator ;
typedef TYPE_1__ GstVlcPicturePlane ;
typedef int GstBuffer ;


 int VLC_UNUSED (int *) ;
 scalar_t__ gst_buffer_n_memory (int *) ;
 scalar_t__ gst_buffer_peek_memory (int *,scalar_t__) ;
 int picture_Release (int *) ;

void gst_vlc_picture_plane_allocator_release(
    GstVlcPicturePlaneAllocator *p_allocator, GstBuffer *p_buffer )
{
    VLC_UNUSED( p_allocator );

    GstVlcPicturePlane* p_mem =
        (GstVlcPicturePlane*) gst_buffer_peek_memory( p_buffer, 0 );
    guint i_plane;

    if( p_mem->p_pic )
    {
        picture_Release( p_mem->p_pic );

        for( i_plane = 0; i_plane < gst_buffer_n_memory( p_buffer );
                i_plane++ )
        {
            p_mem = (GstVlcPicturePlane*) gst_buffer_peek_memory ( p_buffer,
                    i_plane );
            p_mem->p_pic = ((void*)0);
            p_mem->p_plane = ((void*)0);
        }
    }
}
