
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct libssh2_agent_publickey {int comment; } ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int ssh_session; } ;
typedef TYPE_2__ access_sys_t ;
typedef int LIBSSH2_AGENT ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ libssh2_agent_connect (int *) ;
 int libssh2_agent_disconnect (int *) ;
 int libssh2_agent_free (int *) ;
 scalar_t__ libssh2_agent_get_identity (int *,struct libssh2_agent_publickey**,struct libssh2_agent_publickey*) ;
 int * libssh2_agent_init (int ) ;
 scalar_t__ libssh2_agent_list_identities (int *) ;
 scalar_t__ libssh2_agent_userauth (int *,char const*,struct libssh2_agent_publickey*) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int msg_Info (TYPE_1__*,char*) ;

__attribute__((used)) static int AuthKeyAgent( stream_t *p_access, const char *psz_username )
{
    access_sys_t* p_sys = p_access->p_sys;
    int i_result = VLC_EGENERIC;
    LIBSSH2_AGENT *p_sshagent = ((void*)0);
    struct libssh2_agent_publickey *p_identity = ((void*)0),
                                   *p_prev_identity = ((void*)0);

    if( !psz_username || !psz_username[0] )
        return i_result;

    p_sshagent = libssh2_agent_init( p_sys->ssh_session );

    if( !p_sshagent )
    {
        msg_Dbg( p_access, "Failed to initialize key agent" );
        goto bailout;
    }
    if( libssh2_agent_connect( p_sshagent ) )
    {
        msg_Dbg( p_access, "Failed to connect key agent" );
        goto bailout;
    }
    if( libssh2_agent_list_identities( p_sshagent ) )
    {
        msg_Dbg( p_access, "Failed to request identities" );
        goto bailout;
    }

    while( libssh2_agent_get_identity( p_sshagent, &p_identity, p_prev_identity ) == 0 )
    {
        msg_Dbg( p_access, "Using key %s", p_identity->comment );
        if( libssh2_agent_userauth( p_sshagent, psz_username, p_identity ) == 0 )
        {
            msg_Info( p_access, "Public key agent authentication succeeded" );
            i_result = VLC_SUCCESS;
            goto bailout;
        }
        msg_Dbg( p_access, "Public key agent authentication failed" );
        p_prev_identity = p_identity;
    }

bailout:
    if( p_sshagent )
    {
        libssh2_agent_disconnect( p_sshagent );
        libssh2_agent_free( p_sshagent );
    }
    return i_result;
}
