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
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int const PS_STREAM_ID_END_STREAM ; 
 int const PS_STREAM_ID_PACK_HEADER ; 
 int FUNC0 (int const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int const**,int) ; 

__attribute__((used)) static block_t *FUNC3( stream_t *s )
{
    const uint8_t *p_peek;
    int i_peek = FUNC2( s, &p_peek, 14 );
    if( i_peek < 4 )
        return NULL;

    int i_size = FUNC0( p_peek, i_peek );
    if( i_size <= 6 && p_peek[3] > PS_STREAM_ID_PACK_HEADER )
    {
        /* Special case, search the next start code */
        i_size = 6;
        for( ;; )
        {
            i_peek = FUNC2( s, &p_peek, i_size + 1024 );
            if( i_peek <= i_size + 4 )
            {
                return NULL;
            }
            while( i_size <= i_peek - 4 )
            {
                if( p_peek[i_size] == 0x00 && p_peek[i_size+1] == 0x00 &&
                    p_peek[i_size+2] == 0x01 && p_peek[i_size+3] >= PS_STREAM_ID_END_STREAM )
                {
                    return FUNC1( s, i_size );
                }
                i_size++;
            }
        }
    }
    else
    {
        /* Normal case */
        return FUNC1( s, i_size );
    }

    return NULL;
}