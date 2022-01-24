#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_10__ {TYPE_1__* p_picture; } ;
typedef  TYPE_2__ subpicture_region_t ;
struct TYPE_11__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_12__ {int i_height; int i_width; scalar_t__ second_field_offset; scalar_t__ i_image_offset; } ;
typedef  TYPE_4__ decoder_sys_t ;
typedef  int /*<<< orphan*/  bs_t ;
struct TYPE_13__ {scalar_t__ i_buffer; scalar_t__ p_buffer; } ;
typedef  TYPE_5__ block_t ;
struct TYPE_9__ {int Y_PITCH; scalar_t__* Y_PIXELS; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5( decoder_t *p_dec, block_t *p_data,
                subpicture_region_t *p_region )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    uint8_t *p_dest = p_region->p_picture->Y_PIXELS;
    int i_field;            /* The subtitles are interlaced */
    int i_row, i_column;    /* scanline row/column number */
    uint8_t i_color, i_count;
    bs_t bs;

    FUNC2( &bs, p_data->p_buffer + p_sys->i_image_offset,
             p_data->i_buffer - p_sys->i_image_offset );

    for( i_field = 0; i_field < 2; i_field++ )
    {
        for( i_row = i_field; i_row < p_sys->i_height; i_row += 2 )
        {
            for( i_column = 0; i_column < p_sys->i_width; i_column++ )
            {
                i_color = FUNC3( &bs, 2 );
                if( i_color == 0 && (i_count = FUNC3( &bs, 2 )) )
                {
                    i_count = FUNC0( i_count, p_sys->i_width - i_column );
                    FUNC4( &p_dest[i_row * p_region->p_picture->Y_PITCH +
                                    i_column], 0, i_count + 1 );
                    i_column += i_count;
                    continue;
                }

                p_dest[i_row * p_region->p_picture->Y_PITCH + i_column] = i_color;
            }

            FUNC1( &bs );
        }

        /* odd field */
        FUNC2( &bs, p_data->p_buffer + p_sys->i_image_offset +
                 p_sys->second_field_offset,
                 p_data->i_buffer - p_sys->i_image_offset -
                 p_sys->second_field_offset );
    }
}