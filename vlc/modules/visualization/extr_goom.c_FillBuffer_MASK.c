#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_7__ {int i_blocks; int i_channels; TYPE_2__** pp_blocks; } ;
typedef  TYPE_1__ goom_thread_t ;
typedef  int /*<<< orphan*/  date_t ;
struct TYPE_8__ {int i_buffer; scalar_t__ i_pts; int p_buffer; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,TYPE_2__**,int) ; 

__attribute__((used)) static int FUNC7( int16_t *p_data, int *pi_data,
                       date_t *pi_date, date_t *pi_date_end,
                       goom_thread_t *p_this )
{
    int i_samples = 0;
    block_t *p_block;

    while( *pi_data < 512 )
    {
        if( !p_this->i_blocks ) return VLC_EGENERIC;

        p_block = p_this->pp_blocks[0];
        i_samples = FUNC1( (unsigned)(512 - *pi_data),
                p_block->i_buffer / sizeof(float) / p_this->i_channels );

        /* Date management */
        if( p_block->i_pts != VLC_TICK_INVALID &&
            p_block->i_pts != FUNC3( pi_date_end ) )
        {
           FUNC5( pi_date_end, p_block->i_pts );
        }
        p_block->i_pts = VLC_TICK_INVALID;

        FUNC4( pi_date_end, i_samples );

        while( i_samples > 0 )
        {
            float *p_float = (float *)p_block->p_buffer;

            p_data[*pi_data] = FUNC0( p_float[0] );
            if( p_this->i_channels > 1 )
                p_data[512 + *pi_data] = FUNC0( p_float[1] );

            (*pi_data)++;
            p_block->p_buffer += (sizeof(float) * p_this->i_channels);
            p_block->i_buffer -= (sizeof(float) * p_this->i_channels);
            i_samples--;
        }

        if( !p_block->i_buffer )
        {
            FUNC2( p_block );
            p_this->i_blocks--;
            if( p_this->i_blocks )
                FUNC6( p_this->pp_blocks, p_this->pp_blocks + 1,
                         p_this->i_blocks * sizeof(block_t *) );
        }
    }

    *pi_date = *pi_date_end;
    *pi_data = 0;
    return VLC_SUCCESS;
}