#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  stream_t ;
struct TYPE_5__ {scalar_t__ i_size; scalar_t__ i_pos; scalar_t__ const i_type; scalar_t__ i_index; scalar_t__ p_father; } ;
typedef  TYPE_1__ MP4_Box_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,scalar_t__ const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6( stream_t *p_stream,
               MP4_Box_t *p_container, const uint32_t stoplist[],
               const uint32_t excludelist[], bool b_indexed )
{
    /* Size of root container is set to 0 when unknown, for exemple
     * with a DASH stream. In that case, we skip the following check */
    if( (p_container->i_size || p_container->p_father)
            && ( FUNC5( p_stream ) + ((b_indexed)?16:8) >
        (uint64_t)(p_container->i_pos + p_container->i_size) )
      )
    {
        /* there is no box to load */
        return 0;
    }

    uint64_t i_last_pos = 0; /* used to detect read failure loops */
    const uint64_t i_end = p_container->i_pos + p_container->i_size;
    MP4_Box_t *p_box = NULL;
    bool b_onexclude = false;
    bool b_continue;
    do
    {
        b_continue = false;
        if ( p_container->i_size )
        {
            const uint64_t i_tell = FUNC5( p_stream );
            if( i_tell + ((b_indexed)?16:8) >= i_end )
                break;
        }

        uint32_t i_index = 0;
        if ( b_indexed )
        {
            uint8_t read[8];
            if ( FUNC4( p_stream, read, 8 ) < 8 )
                break;
            i_index = FUNC0(&read[4]);
        }
        b_onexclude = false; /* If stopped due exclude list */
        if( (p_box = FUNC1( p_stream, p_container, NULL, excludelist, &b_onexclude )) )
        {
            b_continue = true;
            p_box->i_index = i_index;
            for(size_t i=0; stoplist && stoplist[i]; i++)
            {
                if( p_box->i_type == stoplist[i] )
                    return 1;
            }
        }

        const uint64_t i_tell = FUNC5( p_stream );
        if ( p_container->i_size && i_tell >= i_end )
        {
            FUNC3( i_tell == i_end );
            break;
        }

        if ( !p_box )
        {
            /* Continue with next if box fails to load */
            if( i_last_pos == i_tell )
                break;
            i_last_pos = i_tell;
            b_continue = true;
        }

    } while( b_continue );

    /* Always move to end of container */
    if ( !b_onexclude &&  p_container->i_size )
    {
        const uint64_t i_tell = FUNC5( p_stream );
        if ( i_tell != i_end )
            FUNC2( p_stream, i_end );
    }

    return 1;
}