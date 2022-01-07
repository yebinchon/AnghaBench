
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int p_creds; int url; } ;
typedef TYPE_1__ access_sys_t ;


 int clearCmd (TYPE_1__*) ;
 int ftp_RecvCommand (int *,TYPE_1__*,int *,int *) ;
 scalar_t__ ftp_SendCommand (int *,TYPE_1__*,char*) ;
 int ftp_StopStream (int *,TYPE_1__*) ;
 int msg_Dbg (int *,char*) ;
 int msg_Warn (int *,char*) ;
 int vlc_UrlClean (int *) ;
 int vlc_tls_ClientDelete (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_access, access_sys_t *p_sys )
{
    msg_Dbg( p_access, "stopping stream" );
    ftp_StopStream( p_access, p_sys );

    if( ftp_SendCommand( p_access, p_sys, "QUIT" ) < 0 )
    {
        msg_Warn( p_access, "cannot quit" );
    }
    else
    {
        ftp_RecvCommand( p_access, p_sys, ((void*)0), ((void*)0) );
    }

    clearCmd( p_sys );


    vlc_UrlClean( &p_sys->url );
    vlc_tls_ClientDelete( p_sys->p_creds );
}
