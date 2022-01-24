#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_8__ {int i_socket; int /*<<< orphan*/ * ssh_session; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int LIBSSH2_ERROR_EAGAIN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char const*,int) ; 
 int FUNC6 (TYPE_1__*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7( stream_t *p_access, const char *psz_host, int i_port )
{
    access_sys_t* p_sys = p_access->p_sys;

    /* Connect to the server using a regular socket */
    FUNC1( p_sys->i_socket == -1 );
    p_sys->i_socket = FUNC6( p_access, psz_host, i_port, SOCK_STREAM,
                                   0 );
    if( p_sys->i_socket < 0 )
        goto error;

    /* Create the ssh connexion and wait until the server answer */
    p_sys->ssh_session = FUNC2();
    if( p_sys->ssh_session == NULL )
        goto error;

    int i_ret;
    while( ( i_ret = FUNC4( p_sys->ssh_session, p_sys->i_socket ) )
           == LIBSSH2_ERROR_EAGAIN );

    if( i_ret != 0 )
        goto error;

    /* Set the socket in non-blocking mode */
    FUNC3( p_sys->ssh_session, 1 );
    return VLC_SUCCESS;

error:
    FUNC5( p_access, "Impossible to open the connection to %s:%i",
             psz_host, i_port );
    FUNC0( p_access );
    return VLC_EGENERIC;
}