
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int video_multiview_mode_t ;
struct TYPE_18__ {int i_frames; } ;
struct TYPE_29__ {int type; } ;
struct TYPE_24__ {int i_data; int p_data; } ;
struct TYPE_25__ {TYPE_2__ cc; } ;
struct TYPE_26__ {TYPE_3__ u; int type; } ;
struct TYPE_19__ {int i_type; TYPE_10__ recovery; TYPE_7__ frame_packing; TYPE_4__ itu_t35; int p_bs; } ;
typedef TYPE_11__ hxxx_sei_data_t ;
struct TYPE_23__ {int b_pic_struct_present_flag; int i_dpb_output_delay_length_minus1; int i_cpb_removal_delay_length_minus1; int b_hrd_parameters_present_flag; int b_valid; } ;
struct TYPE_20__ {TYPE_1__ vui; } ;
typedef TYPE_12__ h264_sequence_parameter_set_t ;
struct TYPE_30__ {int multiview_mode; } ;
struct TYPE_31__ {TYPE_8__ video; } ;
struct TYPE_27__ {int multiview_mode; } ;
struct TYPE_28__ {TYPE_5__ video; } ;
struct TYPE_21__ {TYPE_9__ fmt_out; TYPE_6__ fmt_in; TYPE_14__* p_sys; } ;
typedef TYPE_13__ decoder_t ;
struct TYPE_22__ {int i_recovery_frame_cnt; int b_recovered; int p_ccs; void* i_pic_struct; void* i_dpb_output_delay; TYPE_12__* p_active_sps; } ;
typedef TYPE_14__ decoder_sys_t ;
 int HXXX_ITU_T35_TYPE_CC ;




 int MULTIVIEW_2D ;
 int MULTIVIEW_STEREO_CHECKERBOARD ;
 int MULTIVIEW_STEREO_COL ;
 int MULTIVIEW_STEREO_FRAME ;
 int MULTIVIEW_STEREO_ROW ;
 int MULTIVIEW_STEREO_SBS ;
 int MULTIVIEW_STEREO_TB ;
 int assert (TYPE_12__ const*) ;
 void* bs_read (int ,int) ;
 int cc_storage_append (int ,int,int ,int ) ;
 int msg_Dbg (TYPE_13__*,char*,int ) ;
 int unlikely (int ) ;

__attribute__((used)) static bool ParseSeiCallback( const hxxx_sei_data_t *p_sei_data, void *cbdata )
{
    decoder_t *p_dec = (decoder_t *) cbdata;
    decoder_sys_t *p_sys = p_dec->p_sys;

    switch( p_sei_data->i_type )
    {

        case 130:
        {
            const h264_sequence_parameter_set_t *p_sps = p_sys->p_active_sps;
            if( unlikely( p_sps == ((void*)0) ) )
            {
                assert( p_sps );
                break;
            }

            if( p_sps->vui.b_valid )
            {
                if( p_sps->vui.b_hrd_parameters_present_flag )
                {
                    bs_read( p_sei_data->p_bs, p_sps->vui.i_cpb_removal_delay_length_minus1 + 1 );
                    p_sys->i_dpb_output_delay =
                            bs_read( p_sei_data->p_bs, p_sps->vui.i_dpb_output_delay_length_minus1 + 1 );
                }

                if( p_sps->vui.b_pic_struct_present_flag )
                    p_sys->i_pic_struct = bs_read( p_sei_data->p_bs, 4 );

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

        case 131:
        {
            if( p_dec->fmt_in.video.multiview_mode == MULTIVIEW_2D )
            {
                video_multiview_mode_t mode;
                switch( p_sei_data->frame_packing.type )
                {
                    case 138:
                        mode = MULTIVIEW_STEREO_CHECKERBOARD; break;
                    case 137:
                        mode = MULTIVIEW_STEREO_COL; break;
                    case 136:
                        mode = MULTIVIEW_STEREO_ROW; break;
                    case 135:
                        mode = MULTIVIEW_STEREO_SBS; break;
                    case 132:
                        mode = MULTIVIEW_STEREO_TB; break;
                    case 134:
                        mode = MULTIVIEW_STEREO_FRAME; break;
                    case 133:
                    default:
                        mode = MULTIVIEW_2D; break;
                }
                p_dec->fmt_out.video.multiview_mode = mode;
            }
        } break;


        case 129:
        {
            if( !p_sys->b_recovered )
                msg_Dbg( p_dec, "Seen SEI recovery point, %d recovery frames", p_sei_data->recovery.i_frames );
            p_sys->i_recovery_frame_cnt = p_sei_data->recovery.i_frames;
        } break;

        default:

            break;
    }

    return 1;
}
