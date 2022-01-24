#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct av1_color_config_s {int color_primaries; int transfer_characteristics; int matrix_coefficients; int subsampling_x; void* separate_uv_delta_q; void* chroma_sample_position; void* subsampling_y; void* color_range; void* mono_chrome; void* color_description_present_flag; void* high_bitdepth; void* twelve_bit; } ;
typedef  int obu_u3_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 void* COLOR_RANGE_FULL ; 
 void* COLOR_RANGE_LIMITED ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(bs_t *p_bs,
                                   struct av1_color_config_s *p_cc,
                                   obu_u3_t seq_profile)
{
    p_cc->high_bitdepth = FUNC1(p_bs);
    if(seq_profile <= 2)
    {
        if(p_cc->high_bitdepth)
            p_cc->twelve_bit = FUNC1(p_bs);
        if(seq_profile != 1)
            p_cc->mono_chrome = FUNC1(p_bs);
    }
    const uint8_t BitDepth = p_cc->twelve_bit ? 12 : ((p_cc->high_bitdepth) ? 10 : 8);

    p_cc->color_description_present_flag = FUNC1(p_bs);
    if(p_cc->color_description_present_flag)
    {
        p_cc->color_primaries = FUNC0(p_bs, 8);
        p_cc->transfer_characteristics = FUNC0(p_bs, 8);
        p_cc->matrix_coefficients = FUNC0(p_bs, 8);
    }
    else
    {
        p_cc->color_primaries = 2;
        p_cc->transfer_characteristics = 2;
        p_cc->matrix_coefficients = 2;
    }

    if(p_cc->mono_chrome)
    {
        p_cc->color_range = FUNC1(p_bs) ? COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
    }
    else if( p_cc->color_primaries == 1 &&
             p_cc->transfer_characteristics == 13 &&
             p_cc->matrix_coefficients == 0 )
    {
        p_cc->color_range = COLOR_RANGE_FULL;
    }
    else
    {
        p_cc->color_range = FUNC1(p_bs) ? COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
        if(seq_profile > 1)
        {
            if(BitDepth == 12)
            {
                p_cc->subsampling_x = FUNC1(p_bs);
                if(p_cc->subsampling_x)
                    p_cc->subsampling_y = FUNC1(p_bs);
            }
            else
            {
                p_cc->subsampling_x = 1;
            }
        }
        if(p_cc->subsampling_x && p_cc->subsampling_y)
            p_cc->chroma_sample_position = FUNC0(p_bs, 2);
    }

    p_cc->separate_uv_delta_q = FUNC1(p_bs);

    return true;
}