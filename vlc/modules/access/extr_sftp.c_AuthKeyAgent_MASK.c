#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct libssh2_agent_publickey {int /*<<< orphan*/  comment; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_7__ {int /*<<< orphan*/  ssh_session; } ;
typedef  TYPE_2__ access_sys_t ;
typedef  int /*<<< orphan*/  LIBSSH2_AGENT ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct libssh2_agent_publickey**,struct libssh2_agent_publickey*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,struct libssh2_agent_publickey*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC9( stream_t *p_access, const char *psz_username )
{
    access_sys_t* p_sys = p_access->p_sys;
    int i_result = VLC_EGENERIC;
    LIBSSH2_AGENT *p_sshagent = NULL;
    struct libssh2_agent_publickey *p_identity = NULL,
                                   *p_prev_identity = NULL;

    if( !psz_username || !psz_username[0] )
        return i_result;

    p_sshagent = FUNC4( p_sys->ssh_session );

    if( !p_sshagent )
    {
        FUNC7( p_access, "Failed to initialize key agent" );
        goto bailout;
    }
    if( FUNC0( p_sshagent ) )
    {
        FUNC7( p_access, "Failed to connect key agent" );
        goto bailout;
    }
    if( FUNC5( p_sshagent ) )
    {
        FUNC7( p_access, "Failed to request identities" );
        goto bailout;
    }

    while( FUNC3( p_sshagent, &p_identity, p_prev_identity ) == 0 )
    {
        FUNC7( p_access, "Using key %s", p_identity->comment );
        if( FUNC6( p_sshagent, psz_username, p_identity ) == 0 )
        {
            FUNC8( p_access, "Public key agent authentication succeeded" );
            i_result = VLC_SUCCESS;
            goto bailout;
        }
        FUNC7( p_access, "Public key agent authentication failed" );
        p_prev_identity = p_identity;
    }

bailout:
    if( p_sshagent )
    {
        FUNC1( p_sshagent );
        FUNC2( p_sshagent );
    }
    return i_result;
}