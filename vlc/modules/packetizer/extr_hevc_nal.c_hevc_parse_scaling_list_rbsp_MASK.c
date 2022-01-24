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
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 unsigned int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5( bs_t *p_bs )
{
    if( FUNC4( p_bs ) < 16 )
        return false;

    for( int i=0; i<4; i++ )
    {
        for( int j=0; j<6; j += (i == 3) ? 3 : 1 )
        {
            if( FUNC1( p_bs ) == 0 )
                FUNC3( p_bs );
            else
            {
                unsigned nextCoef = 8;
                unsigned coefNum = FUNC0( 64, (1 << (4 + (i << 1))));
                if( i > 1 )
                {
                    nextCoef = FUNC2( p_bs ) + 8;
                }
                for( unsigned k=0; k<coefNum; k++ )
                {
                    nextCoef = ( nextCoef + FUNC2( p_bs ) + 256 ) % 256;
                }
            }
        }
    }

    return true;
}