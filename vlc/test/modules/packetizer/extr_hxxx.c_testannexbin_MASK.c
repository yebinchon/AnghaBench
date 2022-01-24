#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int* p_buffer; size_t i_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7( const uint8_t *p_data, size_t i_data,
                          const uint8_t **pp_res, size_t *pi_res )
{
    FUNC6("INPUT SET    : ");
    for(size_t j=0; j<i_data; j++)
        FUNC6("0x%.2x, ", p_data[j] );
    FUNC6("\n");

    for( unsigned int i=0; i<3; i++)
    {
        block_t *p_block = FUNC1( i_data );
        FUNC5( p_block->p_buffer, p_data, i_data );

        p_block = FUNC3( p_block, 1 << i );
        FUNC6("DUMP prefix %d: ", 1 << i);
        if( p_block )
        {
            for(size_t j=0; j<p_block->i_buffer; j++)
                FUNC6("0x%.2x, ", p_block->p_buffer[j] );
            FUNC6("\n");

            FUNC6("COMPARE SET    : ");
            for(size_t j=0; j<pi_res[i]; j++)
                FUNC6("0x%.2x, ", pp_res[i][j] );
            FUNC6("\n");

            FUNC0( p_block->i_buffer == pi_res[i] );
            FUNC0( FUNC4( p_block->p_buffer, pp_res[i], pi_res[i] ) == 0 );
            FUNC2( p_block );
        }
        else
        {
            FUNC6("** No output **\n");
            FUNC0(0);
        }
    }
}