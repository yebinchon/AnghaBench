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

/* Variables and functions */
 int CDXA_PS ; 
 int const PS_STREAM_ID_END_STREAM ; 
 int const PS_STREAM_ID_PACK_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int const*,int const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int const**,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3( stream_t *s, int format, bool b_pack )
{
    const uint8_t *p_peek;
    int     i_peek;
    int     i_skip;

    if( FUNC1( s, &p_peek, 4 ) < 4 )
    {
        return -1;
    }
    if( p_peek[0] == 0 && p_peek[1] == 0 && p_peek[2] == 1 &&
        p_peek[3] >= PS_STREAM_ID_END_STREAM )
    {
        return 1;
    }

    if( ( i_peek = FUNC1( s, &p_peek, 512 ) ) < 4 )
    {
        return -1;
    }
    i_skip = 0;

    for( ;; )
    {
        if( i_peek < 4 )
        {
            break;
        }
        /* Handle mid stream 24 bytes padding+CRC creating emulated sync codes with incorrect
           PES sizes and frelling up to UINT16_MAX bytes followed by 24 bytes CDXA Header */
        if( format == CDXA_PS && i_skip == 0 && i_peek >= 48 )
        {
            const uint8_t cdxasynccode[12] = { 0x00, 0xff, 0xff, 0xff, 0xff, 0xff,
                                               0xff, 0xff, 0xff, 0xff, 0xff, 0x00 };
            if( !FUNC0( &p_peek[24], cdxasynccode, 12 ) )
            {
                i_peek -= 48;
                p_peek += 48;
                i_skip += 48;
                continue;
            }
        }

        if( p_peek[0] == 0 && p_peek[1] == 0 && p_peek[2] == 1 &&
            p_peek[3] >= PS_STREAM_ID_END_STREAM &&
            ( !b_pack || p_peek[3] == PS_STREAM_ID_PACK_HEADER ) )
        {
            return FUNC2( s, NULL, i_skip ) == i_skip ? 1 : -1;
        }

        p_peek++;
        i_peek--;
        i_skip++;
    }
    return FUNC2( s, NULL, i_skip ) == i_skip ? 0 : -1;
}