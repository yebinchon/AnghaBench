
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int ssh_session; } ;
typedef TYPE_2__ access_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 scalar_t__ libssh2_userauth_publickey_fromfile (int ,char const*,char*,char*,int *) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Info (TYPE_1__*,char*) ;

__attribute__((used)) static int AuthPublicKey( stream_t *p_access, const char *psz_home, const char *psz_username )
{
    access_sys_t* p_sys = p_access->p_sys;
    int i_result = VLC_EGENERIC;
    char *psz_keyfile1 = ((void*)0);
    char *psz_keyfile2 = ((void*)0);

    if( !psz_username || !psz_username[0] )
        return i_result;

    if( asprintf( &psz_keyfile1, "%s/.ssh/id_rsa.pub", psz_home ) == -1 ||
        asprintf( &psz_keyfile2, "%s/.ssh/id_rsa", psz_home ) == -1 )
        goto bailout;

    if( libssh2_userauth_publickey_fromfile( p_sys->ssh_session, psz_username, psz_keyfile1, psz_keyfile2, ((void*)0) ) )
    {
        msg_Dbg( p_access, "Public key authentication failed" );
        goto bailout;
    }

    msg_Info( p_access, "Public key authentication succeeded" );
    i_result = VLC_SUCCESS;

 bailout:
    free( psz_keyfile1 );
    free( psz_keyfile2 );
    return i_result;
}
