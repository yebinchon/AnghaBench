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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  avi_chunk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__ const) ; 
 scalar_t__ const FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( stream_t *s, const avi_chunk_t *p_chk )
{
    bool b_seekable = false;
    const uint64_t i_offset = FUNC0( p_chk );
    if ( !FUNC1(s, STREAM_CAN_SEEK, &b_seekable) && b_seekable )
    {
        return FUNC3( s, i_offset );
    }
    else
    {
        ssize_t i_read = i_offset - FUNC4( s );
        return (i_read >=0 && FUNC2( s, NULL, i_read ) == i_read) ?
                    VLC_SUCCESS : VLC_EGENERIC;
    }
}