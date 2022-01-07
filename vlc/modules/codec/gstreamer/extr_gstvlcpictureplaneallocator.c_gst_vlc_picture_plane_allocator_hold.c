
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_planes; int * p; } ;
typedef TYPE_1__ picture_t ;
typedef int decoder_t ;
struct TYPE_8__ {int * p_plane; TYPE_1__* p_pic; } ;
struct TYPE_7__ {int * p_dec; } ;
typedef TYPE_2__ GstVlcPicturePlaneAllocator ;
typedef TYPE_3__ GstVlcPicturePlane ;
typedef int GstBuffer ;


 TYPE_1__* decoder_NewPicture (int *) ;
 int decoder_UpdateVideoFormat (int *) ;
 scalar_t__ gst_buffer_peek_memory (int *,int) ;
 int msg_Err (int *,char*) ;

bool gst_vlc_picture_plane_allocator_hold(
    GstVlcPicturePlaneAllocator *p_allocator, GstBuffer *p_buffer )
{
    picture_t* p_pic = ((void*)0);
    decoder_t* p_dec = p_allocator->p_dec;
    GstVlcPicturePlane *p_mem;
    int i_plane;

    if( !decoder_UpdateVideoFormat( p_dec ) )
        p_pic = decoder_NewPicture( p_dec );
    if( !p_pic )
    {
        msg_Err( p_allocator->p_dec, "failed to acquire picture from vout" );
        return 0;
    }

    for( i_plane = 0; i_plane < p_pic->i_planes; i_plane++ )
    {
        p_mem = (GstVlcPicturePlane*) gst_buffer_peek_memory ( p_buffer,
                i_plane );
        p_mem->p_pic = p_pic;
        p_mem->p_plane = &p_pic->p[ i_plane ];
    }

    return 1;
}
