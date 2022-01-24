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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) inline static char * FUNC5( stream_t *p_demuxstream, uint64_t *pi_offset )
{
    uint8_t *p_peek;
    ssize_t i_peek = FUNC2( p_demuxstream, (const uint8_t **) &p_peek,
                                  *pi_offset + 2048 );
    if( i_peek < 0 || (uint64_t) i_peek < *pi_offset )
        return NULL;

    const uint64_t i_bufsize = (uint64_t) i_peek - *pi_offset;
    char *psz_line = NULL;

    /* Create a stream memory from that offset */
    stream_t *p_memorystream = FUNC1( p_demuxstream,
                                                     &p_peek[*pi_offset],
                                                     i_bufsize, true );
    if( p_memorystream )
    {
        psz_line = FUNC3( p_memorystream );

        *pi_offset += FUNC4( p_memorystream );
        FUNC0( p_memorystream );
    }

    return psz_line;
}