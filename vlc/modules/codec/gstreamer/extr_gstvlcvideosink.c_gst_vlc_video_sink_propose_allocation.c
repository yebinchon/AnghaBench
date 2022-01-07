
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int gsize ;
typedef scalar_t__ gboolean ;
struct TYPE_9__ {int info; } ;
struct TYPE_8__ {int size; } ;
struct TYPE_7__ {int p_dec; scalar_t__ b_use_pool; } ;
typedef TYPE_1__ GstVlcVideoSink ;
typedef TYPE_2__ GstVideoInfo ;
typedef int GstQuery ;
typedef int GstCaps ;
typedef int GstBufferPool ;
typedef int GstBaseSink ;


 scalar_t__ FALSE ;
 int GST_VIDEO_INFO_SIZE (int *) ;
 int GST_VIDEO_META_API_TYPE ;
 TYPE_6__* GST_VLC_VIDEO_POOL_CAST (int *) ;
 TYPE_1__* GST_VLC_VIDEO_SINK (int *) ;
 scalar_t__ TRUE ;
 int gst_object_unref (int *) ;
 int gst_query_add_allocation_meta (int *,int ,int *) ;
 int gst_query_add_allocation_pool (int *,int *,int ,int,int ) ;
 int gst_query_parse_allocation (int *,int **,scalar_t__*) ;
 int gst_video_info_from_caps (TYPE_2__*,int *) ;
 scalar_t__ gst_vlc_video_sink_create_pool (TYPE_1__*,int *,int ,int) ;
 int msg_Err (int ,char*) ;

__attribute__((used)) static gboolean gst_vlc_video_sink_propose_allocation( GstBaseSink* p_bsink,
        GstQuery* p_query )
{
    GstVlcVideoSink *p_vsink = GST_VLC_VIDEO_SINK( p_bsink );
    GstCaps *p_caps;
    gboolean b_need_pool;
    GstBufferPool* p_pool = ((void*)0);
    gsize i_size;

    gst_query_parse_allocation (p_query, &p_caps, &b_need_pool);
    if( p_caps == ((void*)0) )
        goto no_caps;

    if( p_vsink->b_use_pool && b_need_pool )
    {
        GstVideoInfo info;

        if( !gst_video_info_from_caps( &info, p_caps ))
            goto invalid_caps;

        p_pool = (GstBufferPool*) gst_vlc_video_sink_create_pool( p_vsink,
                p_caps, info.size, 2 );
        if( p_pool == ((void*)0) )
            goto no_pool;

        i_size = GST_VIDEO_INFO_SIZE( &GST_VLC_VIDEO_POOL_CAST( p_pool )->info);
    }

    if( p_pool )
    {

        gst_query_add_allocation_pool( p_query, p_pool, i_size, 2, 0);
        gst_object_unref (p_pool);
    }


    gst_query_add_allocation_meta( p_query, GST_VIDEO_META_API_TYPE, ((void*)0) );

    return TRUE;


no_pool:
    {
        msg_Err( p_vsink->p_dec, "failed to create the pool" );
        return FALSE;
    }
no_caps:
    {
        msg_Err( p_vsink->p_dec, "no caps in allocation query" );
        return FALSE;
    }
invalid_caps:
    {
        msg_Err( p_vsink->p_dec, "invalid caps in allocation query" );
        return FALSE;
    }
}
