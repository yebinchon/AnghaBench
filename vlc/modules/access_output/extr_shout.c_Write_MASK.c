#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ssize_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_11__ {int /*<<< orphan*/  p_shout; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;
struct TYPE_12__ {scalar_t__ i_buffer; int /*<<< orphan*/  p_buffer; struct TYPE_12__* p_next; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 scalar_t__ SHOUTERR_SUCCESS ; 
 size_t VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9( sout_access_out_t *p_access, block_t *p_buffer )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;
    size_t i_write = 0;

    FUNC8( p_sys->p_shout );
    while( p_buffer )
    {
        block_t *p_next = p_buffer->p_next;

        if( FUNC7( p_sys->p_shout, p_buffer->p_buffer, p_buffer->i_buffer )
             == SHOUTERR_SUCCESS )
        {
            i_write += p_buffer->i_buffer;
        }
        else
        {
            FUNC2( p_access, "cannot write to stream: %s",
                     FUNC5( p_sys->p_shout ) );

            /* The most common cause seems to be a server disconnect, resulting in a
               Socket Error which can only be fixed by closing and reconnecting.
               Since we already began with a working connection, the most feasable
               approach to get out of this error status is a (timed) reconnect approach. */
            FUNC4( p_sys->p_shout );
            FUNC3( p_access, "server unavailable? trying to reconnect..." );
            /* Re-open the connection (protocol params have already been set) and re-sync */
            if( FUNC6( p_sys->p_shout ) == SHOUTERR_SUCCESS )
            {
                FUNC8( p_sys->p_shout );
                FUNC3( p_access, "reconnected to server" );
            }
            else
            {
                FUNC2( p_access, "failed to reconnect to server" );
                FUNC0( p_buffer );
                return VLC_EGENERIC;
            }

        }
        FUNC1( p_buffer );

        /* XXX: Unsure if that's the cause for some audio trouble... */

        p_buffer = p_next;
    }

    return i_write;
}