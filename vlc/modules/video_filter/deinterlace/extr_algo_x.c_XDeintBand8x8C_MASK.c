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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static inline void FUNC5( uint8_t *dst, int i_dst,
                                   uint8_t *src, int i_src,
                                   const int i_mbx, int i_modx )
{
    int x;

    for( x = 0; x < i_mbx; x++ )
    {
        int s;
        if( ( s = FUNC0( src, i_src ) ) )
        {
            if( x == 0 || x == i_mbx - 1 )
                FUNC2( dst, i_dst, src, i_src );
            else
                FUNC1( dst, i_dst, src, i_src );
        }
        else
        {
            FUNC3( dst, i_dst,
                             &src[0*i_src], 2*i_src,
                             &src[1*i_src], 2*i_src );
        }

        dst += 8;
        src += 8;
    }

    if( i_modx )
        FUNC4( dst, i_dst, src, i_src, i_modx, 8 );
}