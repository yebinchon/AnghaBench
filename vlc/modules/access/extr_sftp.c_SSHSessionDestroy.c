
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int i_socket; int * ssh_session; } ;
typedef TYPE_2__ access_sys_t ;


 int libssh2_session_free (int *) ;
 int net_Close (int) ;

__attribute__((used)) static void SSHSessionDestroy( stream_t *p_access )
{
    access_sys_t* p_sys = p_access->p_sys;

    if( p_sys->ssh_session )
    {
        libssh2_session_free( p_sys->ssh_session );
        p_sys->ssh_session = ((void*)0);
    }
    if( p_sys->i_socket >= 0 )
    {
        net_Close( p_sys->i_socket );
        p_sys->i_socket = -1;
    }
}
