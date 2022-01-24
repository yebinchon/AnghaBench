#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_transfer_func_t ;
typedef  int /*<<< orphan*/  video_color_space_t ;
typedef  int /*<<< orphan*/  video_color_range_t ;
typedef  int /*<<< orphan*/  video_color_primaries_t ;
struct TYPE_6__ {scalar_t__ b_full_range; int /*<<< orphan*/  i_matrix_coefficients; int /*<<< orphan*/  i_transfer_characteristics; int /*<<< orphan*/  i_colour_primaries; } ;
struct TYPE_5__ {TYPE_2__ colour; int /*<<< orphan*/  b_valid; } ;
struct TYPE_7__ {TYPE_1__ vui; } ;
typedef  TYPE_3__ h264_sequence_parameter_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_RANGE_FULL ; 
 int /*<<< orphan*/  COLOR_RANGE_LIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3( const h264_sequence_parameter_set_t *p_sps,
                           video_color_primaries_t *p_primaries,
                           video_transfer_func_t *p_transfer,
                           video_color_space_t *p_colorspace,
                           video_color_range_t *p_full_range )
{
    if( !p_sps->vui.b_valid )
        return false;
    *p_primaries =
        FUNC0( p_sps->vui.colour.i_colour_primaries );
    *p_transfer =
        FUNC2( p_sps->vui.colour.i_transfer_characteristics );
    *p_colorspace =
        FUNC1( p_sps->vui.colour.i_matrix_coefficients );
    *p_full_range = p_sps->vui.colour.b_full_range ? COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
    return true;
}