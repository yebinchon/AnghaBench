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
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

__attribute__((used)) static void FUNC4( bs_t *s, uint8_t *p, int i_width, int *pi_off )
{
    bool b_stop = false;

    while( !b_stop && !FUNC1( s ) )
    {
        int i_count = 0, i_color = 0;

        i_color = FUNC2( s, 2 );
        if( i_color != 0x00 )
        {
            i_count = 1;
        }
        else
        {
            if( FUNC2( s, 1 ) == 0x01 )         // Switch1
            {
                i_count = 3 + FUNC2( s, 3 );
                i_color = FUNC2( s, 2 );
            }
            else
            {
                if( FUNC2( s, 1 ) == 0x00 )     //Switch2
                {
                    switch( FUNC2( s, 2 ) )     //Switch3
                    {
                    case 0x00:
                        b_stop = true;
                        break;
                    case 0x01:
                        i_count = 2;
                        break;
                    case 0x02:
                        i_count =  12 + FUNC2( s, 4 );
                        i_color = FUNC2( s, 2 );
                        break;
                    case 0x03:
                        i_count =  29 + FUNC2( s, 8 );
                        i_color = FUNC2( s, 2 );
                        break;
                    default:
                        break;
                    }
                }
                else
                {
                    /* 1 pixel color 0 */
                    i_count = 1;
                }
            }
        }

        if( !i_count ) continue;

        /* Sanity check */
        if( ( i_count + *pi_off ) > i_width ) break;

        if( i_count == 1 ) p[*pi_off] = i_color;
        else FUNC3( ( p + *pi_off ), i_color, i_count );

        (*pi_off) += i_count;
    }

    FUNC0( s );
}