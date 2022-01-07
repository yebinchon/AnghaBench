
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_5__ {int (* start ) (int *) ;} ;
struct TYPE_4__ {int p_dec; int p_caps; int align; int info; } ;
typedef TYPE_1__ GstVlcVideoPool ;
typedef int GstBufferPool ;


 int FALSE ;
 TYPE_3__* GST_BUFFER_POOL_CLASS (int ) ;
 TYPE_1__* GST_VLC_VIDEO_POOL_CAST (int *) ;
 int gst_vlc_set_vout_fmt (int *,int *,int ,int ) ;
 int parent_class ;
 int stub1 (int *) ;

__attribute__((used)) static gboolean gst_vlc_video_pool_start( GstBufferPool *p_pool )
{
    GstVlcVideoPool *p_vpool = GST_VLC_VIDEO_POOL_CAST( p_pool );

    if( !gst_vlc_set_vout_fmt( &p_vpool->info, &p_vpool->align,
                p_vpool->p_caps, p_vpool->p_dec ))
        return FALSE;

    return GST_BUFFER_POOL_CLASS( parent_class )->start( p_pool );
}
