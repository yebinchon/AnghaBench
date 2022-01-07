
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int psz_base_url; scalar_t__ sftp_session; scalar_t__ file; } ;
typedef TYPE_2__ access_sys_t ;


 int SSHSessionDestroy (TYPE_1__*) ;
 int free (int ) ;
 int libssh2_sftp_close_handle (scalar_t__) ;
 int libssh2_sftp_shutdown (scalar_t__) ;

__attribute__((used)) static void Close( vlc_object_t* p_this )
{
    stream_t* p_access = (stream_t*)p_this;
    access_sys_t* p_sys = p_access->p_sys;

    if( p_sys->file )
        libssh2_sftp_close_handle( p_sys->file );
    if( p_sys->sftp_session )
        libssh2_sftp_shutdown( p_sys->sftp_session );
    SSHSessionDestroy( p_access );

    free( p_sys->psz_base_url );
}
