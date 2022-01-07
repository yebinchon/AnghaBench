
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int guint ;
typedef int gboolean ;
struct TYPE_12__ {int (* set_config ) (int *,int *) ;} ;
struct TYPE_11__ {int i_extra_picture_buffers; } ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {int b_add_metavideo; TYPE_3__* p_dec; int align; TYPE_2__ info; int p_caps; void* b_need_aligned; scalar_t__ p_allocator; } ;
typedef TYPE_1__ GstVlcVideoPool ;
typedef TYPE_2__ GstVideoInfo ;
typedef int GstVideoAlignment ;
typedef int GstStructure ;
typedef int GstCaps ;
typedef int GstBufferPool ;
typedef int GstAllocator ;
typedef int GstAllocationParams ;


 int FALSE ;
 TYPE_8__* GST_BUFFER_POOL_CLASS (int ) ;
 int GST_BUFFER_POOL_OPTION_VIDEO_ALIGNMENT ;
 int GST_BUFFER_POOL_OPTION_VIDEO_META ;
 int GST_IS_VLC_PICTURE_PLANE_ALLOCATOR (int *) ;
 TYPE_1__* GST_VLC_VIDEO_POOL_CAST (int *) ;
 int gst_buffer_pool_config_get_allocator (int *,int **,int *) ;
 int gst_buffer_pool_config_get_params (int *,int **,int *,int *,int *) ;
 int gst_buffer_pool_config_get_video_alignment (int *,int *) ;
 void* gst_buffer_pool_config_has_option (int *,int ) ;
 int gst_buffer_pool_config_set_params (int *,int *,int ,int ,int ) ;
 int gst_buffer_pool_config_set_video_alignment (int *,int *) ;
 int gst_caps_ref (int *) ;
 int gst_caps_to_string (int *) ;
 int gst_caps_unref (int ) ;
 scalar_t__ gst_object_ref (int *) ;
 int gst_object_unref (scalar_t__) ;
 int gst_video_alignment_reset (int *) ;
 int gst_video_info_from_caps (TYPE_2__*,int *) ;
 int gst_vlc_picture_plane_allocator_query_format (scalar_t__,TYPE_2__*,int *,int *) ;
 int msg_Dbg (TYPE_3__*,char*,int ,int ,int ,int ) ;
 int msg_Err (TYPE_3__*,char*) ;
 int parent_class ;
 int stub1 (int *,int *) ;

__attribute__((used)) static gboolean gst_vlc_video_pool_set_config( GstBufferPool *p_pool,
        GstStructure *p_config )
{
    GstVlcVideoPool *p_vpool = GST_VLC_VIDEO_POOL_CAST( p_pool );
    GstCaps *p_caps;
    GstVideoInfo info;
    GstVideoAlignment align;
    guint size, min_buffers, max_buffers;
    GstAllocator *p_allocator;
    GstAllocationParams params;

    if( !gst_buffer_pool_config_get_params( p_config, &p_caps, &size,
                &min_buffers, &max_buffers ))
        goto wrong_config;
    if( p_caps == ((void*)0) )
        goto no_caps;

    gst_buffer_pool_config_get_allocator( p_config, &p_allocator, &params );
    if( p_allocator )
    {
        if( !GST_IS_VLC_PICTURE_PLANE_ALLOCATOR( p_allocator ))
            goto unsupported_allocator;
        else
        {
            if( p_vpool->p_allocator )
                gst_object_unref( p_vpool->p_allocator );
            p_vpool->p_allocator = gst_object_ref ( p_allocator );
        }
    }


    if ( !gst_video_info_from_caps( &info, p_caps ))
        goto wrong_caps;


    p_vpool->b_add_metavideo =
        gst_buffer_pool_config_has_option( p_config,
                GST_BUFFER_POOL_OPTION_VIDEO_META );

    p_vpool->b_need_aligned =
        gst_buffer_pool_config_has_option( p_config,
                GST_BUFFER_POOL_OPTION_VIDEO_ALIGNMENT );

    if( p_vpool->b_need_aligned )
    {
        p_vpool->b_add_metavideo = 1;
        gst_buffer_pool_config_get_video_alignment( p_config, &align );
    }
    else
         gst_video_alignment_reset( &align );






    p_vpool->p_dec->i_extra_picture_buffers = 16;

    if( !gst_vlc_picture_plane_allocator_query_format( p_vpool->p_allocator,
                &info, &align, p_caps))
        goto unknown_format;

    if( p_vpool->b_need_aligned )
        gst_buffer_pool_config_set_video_alignment( p_config, &align);

    if( p_vpool->p_caps )
        gst_caps_unref( p_vpool->p_caps );
    p_vpool->p_caps = gst_caps_ref( p_caps );
    p_vpool->info = info;
    p_vpool->align = align;

    msg_Dbg( p_vpool->p_dec, "setting the following config on the pool: %s,             size: %lu, min buffers: %u, max buffers: %u", gst_caps_to_string( p_caps ),

            info.size, min_buffers, max_buffers );

    gst_buffer_pool_config_set_params( p_config, p_caps, info.size,
            min_buffers, max_buffers );

    return GST_BUFFER_POOL_CLASS (parent_class)->set_config( p_pool, p_config );


wrong_config:
    {
        msg_Err(p_vpool->p_dec, "wrong pool config" );
        return FALSE;
    }
no_caps:
    {
        msg_Err(p_vpool->p_dec, "no input caps in config" );
        return FALSE;
    }
wrong_caps:
    {
        msg_Err(p_vpool->p_dec, "invalid caps" );
        return FALSE;
    }
unknown_format:
    {
        msg_Err(p_vpool->p_dec, "format unsupported" );
        return FALSE;
    }
unsupported_allocator:
    {
        msg_Err(p_vpool->p_dec, "allocator unsupported" );
        return FALSE;
    }
}
