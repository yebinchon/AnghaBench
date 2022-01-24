#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_11__ {int /*<<< orphan*/  color_range; int /*<<< orphan*/  space; int /*<<< orphan*/  transfer; int /*<<< orphan*/  primaries; } ;
struct TYPE_12__ {TYPE_3__ video; } ;
struct TYPE_9__ {scalar_t__ primaries; } ;
struct TYPE_10__ {TYPE_1__ video; } ;
struct TYPE_13__ {TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef  TYPE_5__ decoder_t ;
typedef  int /*<<< orphan*/  bs_t ;
struct TYPE_14__ {scalar_t__ i_buffer; int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_6__ block_t ;

/* Variables and functions */
 scalar_t__ COLOR_PRIMARIES_UNDEF ; 
 int /*<<< orphan*/  COLOR_RANGE_FULL ; 
 int /*<<< orphan*/  COLOR_RANGE_LIMITED ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7( decoder_t *p_dec, block_t *p_vo )
{
    bs_t s;
    FUNC0( &s, &p_vo->p_buffer[4], p_vo->i_buffer - 4 );
    if( FUNC2( &s ) )
        FUNC3( &s, 7 );

    const uint8_t visual_object_type = FUNC1( &s, 4 );
    if( visual_object_type == 1 /* video ID */ ||
        visual_object_type == 2 /* still texture ID */ )
    {
        uint8_t colour_primaries = 1;
        uint8_t colour_xfer = 1;
        uint8_t colour_matrix_coeff = 1;
        uint8_t full_range = 0;
        if( FUNC2( &s ) ) /* video_signal_type */
        {
            FUNC1( &s, 3 );
            full_range = FUNC1( &s, 1 );
            if( FUNC1( &s, 1 ) ) /* colour description */
            {
                colour_primaries = FUNC1( &s, 8 );
                colour_xfer = FUNC1( &s, 8 );
                colour_matrix_coeff = FUNC1( &s, 8 );
            }
        }

        if( p_dec->fmt_in.video.primaries == COLOR_PRIMARIES_UNDEF )
        {
            p_dec->fmt_out.video.primaries = FUNC4( colour_primaries );
            p_dec->fmt_out.video.transfer = FUNC6( colour_xfer );
            p_dec->fmt_out.video.space = FUNC5( colour_matrix_coeff );
            p_dec->fmt_out.video.color_range = full_range ? COLOR_RANGE_FULL : COLOR_RANGE_LIMITED;
        }
    }

    return VLC_SUCCESS;
}