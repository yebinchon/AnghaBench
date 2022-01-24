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
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  avi_chunk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 

__attribute__((used)) static int FUNC2( stream_t *s, avi_chunk_t *p_chk )
{
    avi_chunk_t chk;

    if( !p_chk )
    {
        if( FUNC0( s, &chk, NULL ) )
        {
            return VLC_EGENERIC;
        }
        p_chk = &chk;
    }

    return FUNC1( s, p_chk );
}