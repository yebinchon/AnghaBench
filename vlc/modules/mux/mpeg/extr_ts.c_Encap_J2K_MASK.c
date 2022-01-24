#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
typedef  size_t uint32_t ;
struct TYPE_11__ {unsigned int const i_frame_rate; unsigned int const i_frame_rate_base; int /*<<< orphan*/  space; int /*<<< orphan*/  transfer; int /*<<< orphan*/  primaries; int /*<<< orphan*/  i_visible_height; int /*<<< orphan*/  i_visible_width; } ;
struct TYPE_12__ {TYPE_1__ video; } ;
typedef  TYPE_2__ es_format_t ;
struct TYPE_13__ {int i_buffer; unsigned int* p_buffer; unsigned int const i_pts; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_14__ {int min; int max; } ;

/* Variables and functions */
 unsigned int const CLOCK_FREQ ; 
 size_t FUNC0 (unsigned int*) ; 
 size_t J2K_BOX_JP2C ; 
 unsigned int FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int const) ; 
 size_t FUNC4 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 TYPE_3__* FUNC5 (TYPE_3__*,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int const,unsigned int const,int) ; 
 TYPE_4__* j2k_profiles_rates ; 
 int /*<<< orphan*/  FUNC9 (unsigned int*,char*,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static block_t *FUNC11( block_t *p_data, const es_format_t *p_fmt )
{
    size_t i_offset = 0;
    uint32_t i_box = 0;
    while( p_data->i_buffer > 8 && p_data->i_buffer - i_offset > 8 )
    {
        const uint32_t i_size = FUNC0( &p_data->p_buffer[i_offset] );
        i_box = FUNC4( p_data->p_buffer[i_offset + 4],
                            p_data->p_buffer[i_offset + 5],
                            p_data->p_buffer[i_offset + 6],
                            p_data->p_buffer[i_offset + 7] );
        if( p_data->i_buffer - i_offset < i_size || i_size < 8 )
        {
            i_box = 0;
            break;
        }
        else if( i_box == J2K_BOX_JP2C )
        {
            break;
        }

        i_offset += i_size;
    }

    if( i_box != J2K_BOX_JP2C )
    {
        FUNC6( p_data );
        return NULL;
    }

    if( i_offset < 38 )
    {
        block_t *p_realloc = FUNC5( p_data, 38 - i_offset, p_data->i_buffer );
        if( FUNC10(!p_realloc) )
        {
            FUNC6( p_data );
            return NULL;
        }
        p_data = p_realloc;
    }
    else
    {
        p_data->p_buffer += (i_offset - 38);
        p_data->i_buffer -= (i_offset - 38);
    }

    const int profile = FUNC8( p_fmt->video.i_visible_width,
                                         p_fmt->video.i_visible_height,
                                         p_fmt->video.i_frame_rate,
                                         p_fmt->video.i_frame_rate_base, true );
    FUNC9(  p_data->p_buffer,     "elsmfrat", 8 );
    FUNC3( &p_data->p_buffer[8],  p_fmt->video.i_frame_rate_base );
    FUNC3( &p_data->p_buffer[10], p_fmt->video.i_frame_rate );
    FUNC9( &p_data->p_buffer[12], "brat", 4 );
    unsigned min = j2k_profiles_rates[profile].min * 1000000;
    unsigned max = j2k_profiles_rates[profile].max * 1000000;
    FUNC2(&p_data->p_buffer[16], max );
    FUNC2(&p_data->p_buffer[20], min );
    FUNC9( &p_data->p_buffer[24], "tcod", 4 );
    const unsigned s = FUNC1(p_data->i_pts);
    const unsigned m = s / 60;
    const unsigned h = m / 60;
    const uint64_t l = p_fmt->video.i_frame_rate_base * CLOCK_FREQ /
                       p_fmt->video.i_frame_rate;
    const unsigned f = (p_data->i_pts % CLOCK_FREQ) / l;
    p_data->p_buffer[28] = h;
    p_data->p_buffer[29] = m % 60;
    p_data->p_buffer[30] = s % 60;
    p_data->p_buffer[31] = f;
    FUNC9( &p_data->p_buffer[32], "bcol", 4 );
    p_data->p_buffer[36] = FUNC7( p_fmt->video.primaries,
                                               p_fmt->video.transfer,
                                               p_fmt->video.space );
    p_data->p_buffer[37] = 0;

    return p_data;
}