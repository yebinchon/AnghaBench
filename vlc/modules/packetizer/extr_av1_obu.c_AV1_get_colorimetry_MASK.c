#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_transfer_func_t ;
typedef  int /*<<< orphan*/  video_color_space_t ;
typedef  int /*<<< orphan*/  video_color_range_t ;
typedef  int /*<<< orphan*/  video_color_primaries_t ;
struct TYPE_4__ {scalar_t__ color_range; int /*<<< orphan*/  matrix_coefficients; int /*<<< orphan*/  transfer_characteristics; int /*<<< orphan*/  color_primaries; int /*<<< orphan*/  color_description_present_flag; } ;
struct TYPE_5__ {TYPE_1__ color_config; } ;
typedef  TYPE_2__ av1_OBU_sequence_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_RANGE_FULL ; 
 int /*<<< orphan*/  COLOR_RANGE_LIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(const av1_OBU_sequence_header_t *p_seq,
                         video_color_primaries_t *p_primaries,
                         video_transfer_func_t *p_transfer,
                         video_color_space_t *p_colorspace,
                         video_color_range_t *p_full_range)
{
    if(!p_seq->color_config.color_description_present_flag)
        return false;
    *p_primaries = FUNC0(p_seq->color_config.color_primaries);
    *p_transfer = FUNC2(p_seq->color_config.transfer_characteristics);
    *p_colorspace = FUNC1(p_seq->color_config.matrix_coefficients);
    *p_full_range = p_seq->color_config.color_range ? COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
    return true;
}