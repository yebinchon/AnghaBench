
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int orientation; } ;
struct TYPE_15__ {TYPE_1__ video; } ;
struct TYPE_13__ {int fmt_in; TYPE_8__ fmt_out; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_14__ {int video; } ;
typedef TYPE_3__ es_format_t ;


 int CreateChain (TYPE_2__*,TYPE_3__*) ;
 int EsFormatMergeSize (TYPE_3__*,TYPE_8__*,int *) ;
 int VLC_SUCCESS ;
 int es_format_Clean (TYPE_3__*) ;
 int es_format_Copy (TYPE_3__*,int *) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int video_format_TransformTo (int *,int ) ;

__attribute__((used)) static int BuildTransformChain( filter_t *p_filter )
{

    es_format_t fmt_mid;
    int i_ret;


    msg_Dbg( p_filter, "Trying to build transform, then chroma+resize" );
    es_format_Copy( &fmt_mid, &p_filter->fmt_in );
    video_format_TransformTo(&fmt_mid.video, p_filter->fmt_out.video.orientation);
    i_ret = CreateChain( p_filter, &fmt_mid );
    es_format_Clean( &fmt_mid );
    if( i_ret == VLC_SUCCESS )
        return VLC_SUCCESS;


    msg_Dbg( p_filter, "Trying to build chroma+resize" );
    EsFormatMergeSize( &fmt_mid, &p_filter->fmt_out, &p_filter->fmt_in );
    i_ret = CreateChain( p_filter, &fmt_mid );
    es_format_Clean( &fmt_mid );
    return i_ret;
}
