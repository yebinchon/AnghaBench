
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {int i_socket; int * ssh_session; } ;
typedef TYPE_2__ access_sys_t ;


 int LIBSSH2_ERROR_EAGAIN ;
 int SOCK_STREAM ;
 int SSHSessionDestroy (TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int * libssh2_session_init () ;
 int libssh2_session_set_blocking (int *,int) ;
 int libssh2_session_startup (int *,int) ;
 int msg_Err (TYPE_1__*,char*,char const*,int) ;
 int net_Connect (TYPE_1__*,char const*,int,int ,int ) ;

__attribute__((used)) static int SSHSessionInit( stream_t *p_access, const char *psz_host, int i_port )
{
    access_sys_t* p_sys = p_access->p_sys;


    assert( p_sys->i_socket == -1 );
    p_sys->i_socket = net_Connect( p_access, psz_host, i_port, SOCK_STREAM,
                                   0 );
    if( p_sys->i_socket < 0 )
        goto error;


    p_sys->ssh_session = libssh2_session_init();
    if( p_sys->ssh_session == ((void*)0) )
        goto error;

    int i_ret;
    while( ( i_ret = libssh2_session_startup( p_sys->ssh_session, p_sys->i_socket ) )
           == LIBSSH2_ERROR_EAGAIN );

    if( i_ret != 0 )
        goto error;


    libssh2_session_set_blocking( p_sys->ssh_session, 1 );
    return VLC_SUCCESS;

error:
    msg_Err( p_access, "Impossible to open the connection to %s:%i",
             psz_host, i_port );
    SSHSessionDestroy( p_access );
    return VLC_EGENERIC;
}
