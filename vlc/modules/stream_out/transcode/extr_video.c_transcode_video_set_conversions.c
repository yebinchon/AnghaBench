
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_16__ {int * p_conv_static; int * p_conv_nonstatic; } ;
typedef TYPE_1__ sout_stream_id_sys_t ;
struct TYPE_17__ {TYPE_1__* sys; int * video; } ;
typedef TYPE_2__ filter_owner_t ;
typedef int filter_chain_t ;
struct TYPE_19__ {scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_chroma; scalar_t__ orientation; } ;
struct TYPE_18__ {TYPE_4__ video; } ;
typedef TYPE_3__ es_format_t ;


 scalar_t__ ORIENT_NORMAL ;
 int VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int debug_format (int *,TYPE_3__ const*) ;
 int es_format_Init (TYPE_3__*,int ,scalar_t__) ;
 int filter_chain_AppendConverter (int *,TYPE_3__ const*) ;
 TYPE_3__* filter_chain_GetFmtOut (int *) ;
 int * filter_chain_NewVideo (int *,int,TYPE_2__*) ;
 int filter_chain_Reset (int *,TYPE_3__ const*,TYPE_3__ const*) ;
 int msg_Dbg (int *,char*,int const,int const,int const) ;
 int transcode_filter_video_cbs ;
 int video_format_ApplyRotation (TYPE_4__*,TYPE_4__*) ;

__attribute__((used)) static int transcode_video_set_conversions( sout_stream_t *p_stream,
                                            sout_stream_id_sys_t *id,
                                            const es_format_t **pp_src,
                                            const es_format_t *p_dst,
                                            bool b_reorient )
{
    filter_owner_t owner = {
        .video = &transcode_filter_video_cbs,
        .sys = id,
    };

    enum
    {
        STEP_NONSTATIC = 0,
        STEP_STATIC,
    };
    for( int step = STEP_NONSTATIC; step <= STEP_STATIC; step++ )
    {
        const bool b_do_scale = (*pp_src)->video.i_width != p_dst->video.i_width ||
                                (*pp_src)->video.i_height != p_dst->video.i_height;
        const bool b_do_chroma = (*pp_src)->video.i_chroma != p_dst->video.i_chroma;
        const bool b_do_orient = ((*pp_src)->video.orientation != ORIENT_NORMAL) && b_reorient;

        if( step == STEP_STATIC && b_do_orient )
            return VLC_EGENERIC;

        const es_format_t *p_tmpdst = p_dst;

        if( ! (b_do_scale || b_do_chroma || b_do_orient) )
            return VLC_SUCCESS;

        es_format_t tmpdst;
        if( b_do_orient )
        {
            es_format_Init( &tmpdst, VIDEO_ES, p_dst->video.i_chroma );
            video_format_ApplyRotation( &tmpdst.video, &p_dst->video );
            p_tmpdst = &tmpdst;
        }

        msg_Dbg( p_stream, "adding (scale %d,chroma %d, orient %d) converters",
                 b_do_scale, b_do_chroma, b_do_orient );

        filter_chain_t **pp_chain = (step == STEP_NONSTATIC)
                ? &id->p_conv_nonstatic
                : &id->p_conv_static;

        *pp_chain = filter_chain_NewVideo( p_stream, step == STEP_NONSTATIC, &owner );
        if( !*pp_chain )
            return VLC_EGENERIC;
        filter_chain_Reset( *pp_chain, *pp_src, p_tmpdst );

        if( filter_chain_AppendConverter( *pp_chain, p_tmpdst ) != VLC_SUCCESS )
            return VLC_EGENERIC;

        *pp_src = filter_chain_GetFmtOut( *pp_chain );
        debug_format( p_stream, *pp_src );
    }

    return VLC_SUCCESS;
}
