#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,char const**,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2( demux_t *p_demux )
{
    for( ;; )
    {
        const uint8_t *p_peek;
        int i_peek = FUNC0( p_demux->s, &p_peek, 1024 );
        if( i_peek < 8 )
            break;

        int i_skip = 0;

        while( i_skip < i_peek - 5 )
        {
            if( p_peek[0] == 'A' && p_peek[1] == 'V' && p_peek[4] == 0x55 )
            {
                if( i_skip > 0
                 && FUNC1( p_demux->s, NULL, i_skip ) < i_skip )
                    return VLC_EGENERIC;
                return VLC_SUCCESS;
            }
            p_peek++;
            i_skip++;
        }

        if( FUNC1( p_demux->s, NULL, i_skip ) < i_skip )
            break;
    }

    return VLC_EGENERIC;
}