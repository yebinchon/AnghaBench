#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t obu_u5_t ;
typedef  int obu_u4_t ;
typedef  void* obu_u1_t ;
typedef  int /*<<< orphan*/  bs_t ;
struct TYPE_9__ {int /*<<< orphan*/  buffer_delay_length_minus_1; } ;
struct TYPE_8__ {size_t operating_points_cnt_minus_1; void* film_grain_params_present; void* seq_profile; int /*<<< orphan*/  color_config; void* enable_restoration; void* enable_cdef; void* enable_superres; void* order_hint_bits_minus_1; void* enable_order_hint; void* seq_force_integer_mv; void* seq_force_screen_content_tools; void* enable_ref_frame_mvs; void* enable_jnt_comp; void* enable_dual_filter; void* enable_warped_motion; void* enable_masked_compound; void* enable_interintra_compound; void* enable_intra_edge_filter; void* enable_filter_intra; void* use_128x128_superblock; void* additional_frame_id_length_minus_1; void* delta_frame_id_length_minus_2; void* frame_id_numbers_present_flag; void* max_frame_height_minus_1; void* max_frame_width_minus_1; TYPE_1__* operating_points; void* initial_display_delay_present_flag; TYPE_4__ decoder_model_info; void* decoder_model_info_present_flag; int /*<<< orphan*/  timing_info; void* timing_info_present_flag; void* still_picture; int /*<<< orphan*/  obu_header; } ;
typedef  TYPE_2__ av1_OBU_sequence_header_t ;
struct TYPE_7__ {int seq_level_idx; void* initial_display_delay_minus_1; void* initial_display_delay_present_for_this_op; int /*<<< orphan*/  operating_parameters_info; void* decoder_model_present_for_this_op; void* seq_tier; void* operating_point_idc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* SELECT_INTEGER_MV ; 
 void* SELECT_SCREEN_CONTENT_TOOLS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int,int) ; 

av1_OBU_sequence_header_t *
    FUNC11(const uint8_t *p_data, size_t i_data)
{
    bs_t bs;
    FUNC6(&bs, p_data, i_data);

    av1_OBU_sequence_header_t *p_seq = FUNC10(1, sizeof(*p_seq));
    if(!p_seq)
        return NULL;

    if(!FUNC5(&bs, &p_seq->obu_header))
    {
        FUNC0(p_seq);
        return NULL;
    }

    p_seq->seq_force_screen_content_tools = SELECT_SCREEN_CONTENT_TOOLS;
    p_seq->seq_force_integer_mv = SELECT_INTEGER_MV;


    p_seq->seq_profile = FUNC7(&bs, 3);
    p_seq->still_picture = FUNC8(&bs);
    const obu_u1_t reduced_still_picture_header = FUNC8(&bs);
    if(reduced_still_picture_header)
    {
        p_seq->operating_points[0].seq_level_idx = FUNC7(&bs, 5);
    }
    else
    {
        p_seq->timing_info_present_flag = FUNC8(&bs);
        if(p_seq->timing_info_present_flag)
        {
            FUNC4(&bs, &p_seq->timing_info);
            p_seq->decoder_model_info_present_flag = FUNC8(&bs);
            if(p_seq->decoder_model_info_present_flag)
                FUNC2(&bs, &p_seq->decoder_model_info);
        }

        p_seq->initial_display_delay_present_flag = FUNC8(&bs);
        p_seq->operating_points_cnt_minus_1 = FUNC7(&bs, 5);
        for(obu_u5_t i=0; i<=p_seq->operating_points_cnt_minus_1; i++)
        {
            p_seq->operating_points[i].operating_point_idc = FUNC7(&bs, 12);
            p_seq->operating_points[i].seq_level_idx = FUNC7(&bs, 5);
            if(p_seq->operating_points[i].seq_level_idx > 7)
                p_seq->operating_points[i].seq_tier = FUNC8(&bs);
            if(p_seq->decoder_model_info_present_flag)
            {
                p_seq->operating_points[i].decoder_model_present_for_this_op = FUNC8(&bs);
                if(p_seq->operating_points[i].decoder_model_present_for_this_op)
                    FUNC3(&bs, &p_seq->operating_points[i].operating_parameters_info,
                                                  p_seq->decoder_model_info.buffer_delay_length_minus_1);
            }
            if(p_seq->initial_display_delay_present_flag)
            {
                p_seq->operating_points[i].initial_display_delay_present_for_this_op = FUNC8(&bs);
                if(p_seq->operating_points[i].initial_display_delay_present_for_this_op)
                {
                    p_seq->operating_points[i].initial_display_delay_minus_1 = FUNC7(&bs, 4);
                }
            }
        }
    }
    const obu_u4_t frame_width_bits_minus_1 = FUNC7(&bs, 4);
    const obu_u4_t frame_height_bits_minus_1 = FUNC7(&bs, 4);
    p_seq->max_frame_width_minus_1 = FUNC7(&bs, 1 + frame_width_bits_minus_1);
    p_seq->max_frame_height_minus_1 = FUNC7(&bs, 1 + frame_height_bits_minus_1);
    if(!reduced_still_picture_header)
    {
        p_seq->frame_id_numbers_present_flag = FUNC8(&bs);
        if(p_seq->frame_id_numbers_present_flag)
        {
            p_seq->delta_frame_id_length_minus_2 = FUNC7(&bs, 4);
            p_seq->additional_frame_id_length_minus_1 = FUNC7(&bs, 3);
        }
    }
    p_seq->use_128x128_superblock = FUNC8(&bs);
    p_seq->enable_filter_intra = FUNC8(&bs);
    p_seq->enable_intra_edge_filter = FUNC8(&bs);
    if(!reduced_still_picture_header)
    {
        p_seq->enable_interintra_compound = FUNC8(&bs);
        p_seq->enable_masked_compound = FUNC8(&bs);
        p_seq->enable_warped_motion = FUNC8(&bs);
        p_seq->enable_dual_filter = FUNC8(&bs);
        p_seq->enable_order_hint = FUNC8(&bs);
        if(p_seq->enable_order_hint)
        {
            p_seq->enable_jnt_comp = FUNC8(&bs);
            p_seq->enable_ref_frame_mvs = FUNC8(&bs);
        }
        const obu_u1_t seq_choose_screen_content_tools = FUNC8(&bs);
        if(!seq_choose_screen_content_tools)
            p_seq->seq_force_screen_content_tools = FUNC8(&bs);

        if(p_seq->seq_force_screen_content_tools)
        {
            const obu_u1_t seq_choose_integer_mv = FUNC8(&bs);
            if(!seq_choose_integer_mv)
                p_seq->seq_force_integer_mv = FUNC8(&bs);
        }

        if(p_seq->enable_order_hint)
            p_seq->order_hint_bits_minus_1 = FUNC7(&bs, 3);
    }
    p_seq->enable_superres = FUNC8(&bs);
    p_seq->enable_cdef = FUNC8(&bs);
    p_seq->enable_restoration = FUNC8(&bs);
    FUNC1(&bs, &p_seq->color_config, p_seq->seq_profile);
    if(FUNC9(&bs) < 1)
    {
        FUNC0(p_seq);
        return NULL;
    }
    p_seq->film_grain_params_present = FUNC8(&bs);

    return p_seq;
}