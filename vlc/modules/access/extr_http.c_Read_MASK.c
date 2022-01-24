#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int ssize_t ;
struct TYPE_10__ {int i_icy_meta; int offset; int i_icy_offset; scalar_t__ b_reconnect; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static ssize_t FUNC6( stream_t *p_access, void *p_buffer, size_t i_len )
{
    access_sys_t *p_sys = p_access->p_sys;

    if (p_sys->stream == NULL)
        return 0;

    int i_chunk = i_len;

    if( p_sys->i_icy_meta > 0 )
    {
        if( UINT64_MAX - i_chunk < p_sys->offset )
            i_chunk = UINT64_MAX - p_sys->offset;

        if( p_sys->offset + i_chunk > p_sys->i_icy_offset )
            i_chunk = p_sys->i_icy_offset - p_sys->offset;
    }

    int i_read = 0;
    if( FUNC2( p_access, &i_read, (uint8_t*)p_buffer, i_chunk ) )
        return 0;

    if( i_read < 0 )
        return -1; /* EINTR / EAGAIN */

    if( i_read == 0 )
    {
        FUNC1( p_access );
        if( p_sys->b_reconnect )
        {
            FUNC5( p_access, "got disconnected, trying to reconnect" );
            if( FUNC0( p_access ) )
                FUNC5( p_access, "reconnection failed" );
            else
                return -1;
        }
        return 0;
    }

    FUNC4( i_read >= 0 );
    p_sys->offset += i_read;

    if( p_sys->i_icy_meta > 0 &&
        p_sys->offset == p_sys->i_icy_offset )
    {
        if( FUNC3( p_access ) )
            return 0;
        p_sys->i_icy_offset = p_sys->offset + p_sys->i_icy_meta;
    }

    return i_read;
}