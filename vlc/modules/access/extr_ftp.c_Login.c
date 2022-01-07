
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;


struct TYPE_22__ {int psz_host; } ;
typedef TYPE_2__ vlc_url_t ;
typedef int vlc_object_t ;
struct TYPE_23__ {char* psz_username; int psz_password; } ;
typedef TYPE_3__ vlc_credential ;
struct TYPE_20__ {int b_authtls; } ;
struct TYPE_21__ {int i_port; int psz_host; } ;
struct TYPE_24__ {scalar_t__ tlsmode; TYPE_15__ features; int * cmd; TYPE_1__ url; } ;
typedef TYPE_4__ access_sys_t ;


 scalar_t__ EXPLICIT ;
 int FeaturesCheck ;
 scalar_t__ IMPLICIT ;
 int LOGIN_DIALOG_TEXT ;
 int LOGIN_DIALOG_TITLE ;
 scalar_t__ LoginUserPwd (int *,TYPE_4__*,char const*,int ,int*) ;
 scalar_t__ NONE ;
 int _ (char*) ;
 int clearCmd (TYPE_4__*) ;
 scalar_t__ createCmdTLS (int *,TYPE_4__*,char*) ;
 scalar_t__ ftp_RecvAnswer (int *,TYPE_4__*,int *,int *,int ,TYPE_15__*) ;
 int ftp_RecvCommand (int *,TYPE_4__*,int*,int *) ;
 scalar_t__ ftp_SendCommand (int *,TYPE_4__*,char*) ;
 int msg_Dbg (int *,char*,int) ;
 int msg_Err (int *,char*,...) ;
 int vlc_UrlClean (TYPE_2__*) ;
 scalar_t__ vlc_UrlParseFixup (TYPE_2__*,char const*) ;
 int vlc_credential_clean (TYPE_3__*) ;
 scalar_t__ vlc_credential_get (TYPE_3__*,int *,char*,char*,int ,int ,...) ;
 int vlc_credential_init (TYPE_3__*,TYPE_2__*) ;
 int vlc_credential_store (TYPE_3__*,int *) ;
 int vlc_dialog_display_error (int *,int ,char*,int ) ;
 int * vlc_tls_SocketOpenTCP (int *,int ,int ) ;

__attribute__((used)) static int Login( vlc_object_t *p_access, access_sys_t *p_sys, const char *path )
{
    int i_answer;


    p_sys->cmd = vlc_tls_SocketOpenTCP( p_access, p_sys->url.psz_host,
                                        p_sys->url.i_port );
    if( p_sys->cmd == ((void*)0) )
    {
        msg_Err( p_access, "connection failed" );
        vlc_dialog_display_error( p_access, _("Network interaction failed"), "%s",
            _("VLC could not connect with the given server.") );
        goto error;
    }

    if ( p_sys->tlsmode == IMPLICIT )
    {
        if ( createCmdTLS( p_access, p_sys, "ftps") < 0 )
            goto error;
    }

    while( ftp_RecvCommand( p_access, p_sys, &i_answer, ((void*)0) ) == 1 );

    if( i_answer / 100 != 2 )
    {
        msg_Err( p_access, "connection rejected" );
        vlc_dialog_display_error( p_access, _("Network interaction failed"), "%s",
            _("VLC's connection to the given server was rejected.") );
        goto error;
    }

    msg_Dbg( p_access, "connection accepted (%d)", i_answer );


    if( ftp_SendCommand( p_access, p_sys, "FEAT" ) < 0
     || ftp_RecvAnswer( p_access, p_sys, ((void*)0), ((void*)0),
                        FeaturesCheck, &p_sys->features ) < 0 )
    {
         msg_Err( p_access, "cannot get server features" );
         goto error;
    }


    if( p_sys->tlsmode == EXPLICIT )
    {
        if ( ! p_sys->features.b_authtls )
        {
            msg_Err( p_access, "Server does not support TLS" );
            goto error;
        }

        if( ftp_SendCommand( p_access, p_sys, "AUTH TLS" ) < 0
         || ftp_RecvCommand( p_access, p_sys, &i_answer, ((void*)0) ) < 0
         || i_answer != 234 )
        {
             msg_Err( p_access, "cannot switch to TLS: server replied with code %d",
                      i_answer );
             goto error;
        }

        if( createCmdTLS( p_access, p_sys, "ftpes") < 0 )
        {
            goto error;
        }
    }

    if( p_sys->tlsmode != NONE )
    {
        if( ftp_SendCommand( p_access, p_sys, "PBSZ 0" ) < 0 ||
            ftp_RecvCommand( p_access, p_sys, &i_answer, ((void*)0) ) < 0 ||
            i_answer != 200 )
        {
            msg_Err( p_access, "Can't truncate Protection buffer size for TLS" );
            goto error;
        }

        if( ftp_SendCommand( p_access, p_sys, "PROT P" ) < 0 ||
            ftp_RecvCommand( p_access, p_sys, &i_answer, ((void*)0) ) < 0 ||
            i_answer != 200 )
        {
            msg_Err( p_access, "Can't set Data channel protection" );
            goto error;
        }
    }

    vlc_url_t url;
    vlc_credential credential;
    if( vlc_UrlParseFixup( &url, path ) != 0 )
    {
        vlc_UrlClean( &url );
        goto error;
    }
    vlc_credential_init( &credential, &url );
    bool b_logged = 0;


    vlc_credential_get( &credential, p_access, "ftp-user", "ftp-pwd",
                        ((void*)0), ((void*)0) );
    do
    {
        const char *psz_username = credential.psz_username;

        if( psz_username == ((void*)0) )
            psz_username = "anonymous";

        if( LoginUserPwd( p_access, p_sys, psz_username,
                          credential.psz_password, &b_logged ) != 0
         || b_logged )
            break;
    }
    while( vlc_credential_get( &credential, p_access, "ftp-user", "ftp-pwd",
                               LOGIN_DIALOG_TITLE, LOGIN_DIALOG_TEXT,
                               url.psz_host ) );

    if( b_logged )
    {
        vlc_credential_store( &credential, p_access );
        vlc_credential_clean( &credential );
        vlc_UrlClean( &url );
        return 0;
    }
    vlc_credential_clean( &credential );
    vlc_UrlClean( &url );
error:
    clearCmd( p_sys );
    return -1;
}
