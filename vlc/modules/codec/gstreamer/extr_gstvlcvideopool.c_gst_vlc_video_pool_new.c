
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_4__ {int * p_dec; int p_allocator; } ;
typedef TYPE_1__ GstVlcVideoPool ;
typedef int GstAllocator ;


 int GST_IS_VLC_PICTURE_PLANE_ALLOCATOR (int *) ;
 int GST_TYPE_VLC_VIDEO_POOL ;
 TYPE_1__* g_object_new (int ,int *) ;
 int gst_object_ref (int *) ;
 int msg_Err (int *,char*) ;

GstVlcVideoPool* gst_vlc_video_pool_new(
    GstAllocator *p_allocator, decoder_t *p_dec )
{
    GstVlcVideoPool *p_pool;

    if( !GST_IS_VLC_PICTURE_PLANE_ALLOCATOR( p_allocator ))
    {
        msg_Err( p_dec, "unspported allocator for pool" );
        return ((void*)0);
    }

    p_pool = g_object_new( GST_TYPE_VLC_VIDEO_POOL, ((void*)0) );
    p_pool->p_allocator = gst_object_ref( p_allocator );
    p_pool->p_dec = p_dec;

    return p_pool;
}
