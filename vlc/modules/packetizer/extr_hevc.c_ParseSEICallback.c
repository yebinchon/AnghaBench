
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_16__ ;
typedef struct TYPE_24__ TYPE_15__ ;
typedef struct TYPE_23__ TYPE_14__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int video_multiview_mode_t ;
struct TYPE_20__ {int MaxFALL; int MaxCLL; } ;
struct TYPE_33__ {int min_luminance; int max_luminance; int * white_point; int * primaries; } ;
struct TYPE_22__ {TYPE_11__ lighting; TYPE_8__ mastering; int multiview_mode; } ;
typedef TYPE_13__ video_format_t ;
struct TYPE_21__ {int MaxFALL; int MaxCLL; } ;
struct TYPE_34__ {int min_luminance; int max_luminance; int * white_point; int * primaries; } ;
struct TYPE_32__ {int type; } ;
struct TYPE_29__ {int i_frames; } ;
struct TYPE_26__ {int i_data; int p_data; } ;
struct TYPE_27__ {TYPE_1__ cc; } ;
struct TYPE_28__ {TYPE_2__ u; int type; } ;
struct TYPE_23__ {int i_type; TYPE_12__ content_light_lvl; TYPE_9__ colour_volume; TYPE_7__ frame_packing; TYPE_4__ recovery; TYPE_3__ itu_t35; int p_bs; } ;
typedef TYPE_14__ hxxx_sei_data_t ;
struct TYPE_19__ {TYPE_13__ video; } ;
struct TYPE_30__ {int multiview_mode; } ;
struct TYPE_31__ {TYPE_5__ video; } ;
struct TYPE_24__ {TYPE_10__ fmt_out; TYPE_6__ fmt_in; TYPE_16__* p_sys; } ;
typedef TYPE_15__ decoder_t ;
struct TYPE_25__ {int b_recovery_point; int p_ccs; int p_active_sps; int p_timing; } ;
typedef TYPE_16__ decoder_sys_t ;


 size_t ARRAY_SIZE (int *) ;







 int HXXX_ITU_T35_TYPE_CC ;






 int MULTIVIEW_2D ;
 int MULTIVIEW_STEREO_CHECKERBOARD ;
 int MULTIVIEW_STEREO_COL ;
 int MULTIVIEW_STEREO_FRAME ;
 int MULTIVIEW_STEREO_ROW ;
 int MULTIVIEW_STEREO_SBS ;
 int MULTIVIEW_STEREO_TB ;
 int cc_storage_append (int ,int,int ,int ) ;
 int hevc_decode_sei_pic_timing (int ,int ) ;
 int hevc_release_sei_pic_timing (int ) ;
 int msg_Dbg (TYPE_15__*,char*,int ) ;

__attribute__((used)) static bool ParseSEICallback( const hxxx_sei_data_t *p_sei_data, void *cbdata )
{
    decoder_t *p_dec = (decoder_t *) cbdata;
    decoder_sys_t *p_sys = p_dec->p_sys;

    switch( p_sei_data->i_type )
    {
        case 130:
        {
            if( p_sys->p_active_sps )
            {
                hevc_release_sei_pic_timing( p_sys->p_timing );
                p_sys->p_timing = hevc_decode_sei_pic_timing( p_sei_data->p_bs,
                                                              p_sys->p_active_sps );
            }
        } break;
        case 128:
        {
            if( p_sei_data->itu_t35.type == HXXX_ITU_T35_TYPE_CC )
            {
                cc_storage_append( p_sys->p_ccs, 1, p_sei_data->itu_t35.u.cc.p_data,
                                                       p_sei_data->itu_t35.u.cc.i_data );
            }
        } break;
        case 129:
        {
            if( !p_sys->b_recovery_point )
            {
                msg_Dbg( p_dec, "Seen SEI recovery point, %d recovery frames", p_sei_data->recovery.i_frames );
                p_sys->b_recovery_point = 1;
            }
        } break;
        case 132:
        {
            if( p_dec->fmt_in.video.multiview_mode == MULTIVIEW_2D )
            {
                video_multiview_mode_t mode;
                switch( p_sei_data->frame_packing.type )
                {
                    case 140:
                        mode = MULTIVIEW_STEREO_CHECKERBOARD; break;
                    case 139:
                        mode = MULTIVIEW_STEREO_COL; break;
                    case 138:
                        mode = MULTIVIEW_STEREO_ROW; break;
                    case 137:
                        mode = MULTIVIEW_STEREO_SBS; break;
                    case 134:
                        mode = MULTIVIEW_STEREO_TB; break;
                    case 136:
                        mode = MULTIVIEW_STEREO_FRAME; break;
                    case 135:
                    default:
                        mode = MULTIVIEW_2D; break;
                }
                p_dec->fmt_out.video.multiview_mode = mode;
            }
        } break;
        case 131:
        {
            video_format_t *p_fmt = &p_dec->fmt_out.video;
            for (size_t i=0; i<ARRAY_SIZE(p_sei_data->colour_volume.primaries); ++i)
                p_fmt->mastering.primaries[i] = p_sei_data->colour_volume.primaries[i];
            for (size_t i=0; i<ARRAY_SIZE(p_sei_data->colour_volume.white_point); ++i)
                p_fmt->mastering.white_point[i] = p_sei_data->colour_volume.white_point[i];
            p_fmt->mastering.max_luminance = p_sei_data->colour_volume.max_luminance;
            p_fmt->mastering.min_luminance = p_sei_data->colour_volume.min_luminance;
        } break;
        case 133:
        {
            video_format_t *p_fmt = &p_dec->fmt_out.video;
            p_fmt->lighting.MaxCLL = p_sei_data->content_light_lvl.MaxCLL;
            p_fmt->lighting.MaxFALL = p_sei_data->content_light_lvl.MaxFALL;
        } break;
    }

    return 1;
}
