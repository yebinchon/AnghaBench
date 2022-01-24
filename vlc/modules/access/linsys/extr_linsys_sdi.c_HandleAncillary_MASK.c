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
typedef  unsigned int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const*,unsigned int,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3( demux_t *p_demux, const uint16_t *p_anc,
                             unsigned int i_size )
{
    uint8_t i_data_count;

    if ( i_size < 7
          || p_anc[0] != 0x0 || p_anc[1] != 0x3ff || p_anc[2] != 0x3ff )
        return;

    i_data_count = p_anc[5] & 0xff;
    if ( i_size - 6 < i_data_count )
    {
        FUNC2( p_demux, "malformed ancillary packet (size %u > %u)",
                  i_data_count, i_size - 6 );
        return;
    }

    switch ( p_anc[3] ) /* Data ID */
    {
    case 0x2ff:
        FUNC1( p_demux, p_anc + 6, i_data_count, 1, p_anc[4] & 0xff );
        break;
    case 0x1fd:
        FUNC1( p_demux, p_anc + 6, i_data_count, 2, p_anc[4] & 0xff );
        break;
    case 0x1fb:
        FUNC1( p_demux, p_anc + 6, i_data_count, 3, p_anc[4] & 0xff );
        break;
    case 0x2f9:
        FUNC1( p_demux, p_anc + 6, i_data_count, 4, p_anc[4] & 0xff );
        break;

    case 0x1ef:
        FUNC0( p_demux, p_anc + 6, i_data_count, 1 );
        break;
    case 0x2ee:
        FUNC0( p_demux, p_anc + 6, i_data_count, 2 );
        break;
    case 0x2ed:
        FUNC0( p_demux, p_anc + 6, i_data_count, 3 );
        break;
    case 0x1ec:
        FUNC0( p_demux, p_anc + 6, i_data_count, 4 );
        break;

    /* Extended data packets, same order */
    case 0x1fe:
    case 0x2fc:
    case 0x2fa:
    case 0x1f8:

    default:
        break;

    case 0x88: /* non-conforming ANC packet */
        p_anc += 7;
        i_size -= 7;
        while ( i_size >= 7 && (p_anc[0] != 0x0 || p_anc[1] != 0x3ff
                                 || p_anc[2] != 0x3ff) )
        {
            p_anc++;
            i_size--;
        }
        if ( i_size >= 7 )
            FUNC3( p_demux, p_anc, i_size );
        return;
    }

    return FUNC3( p_demux, p_anc + i_data_count + 7,
                            i_size - i_data_count - 7 );

}