
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tls_t ;
typedef int vlc_object_t ;
struct TYPE_4__ {int psz_host; } ;
struct TYPE_5__ {int * cmd; TYPE_1__ url; int p_creds; } ;
typedef TYPE_2__ access_sys_t ;


 int msg_Err (int *,char*) ;
 int * vlc_tls_ClientSessionCreate (int ,int *,int ,char const*,int *,int *) ;

__attribute__((used)) static int createCmdTLS( vlc_object_t *p_access, access_sys_t *p_sys,
                         const char *psz_session_name )
{

    vlc_tls_t *secure = vlc_tls_ClientSessionCreate( p_sys->p_creds,
                                                     p_sys->cmd,
                                                     p_sys->url.psz_host,
                                                     psz_session_name,
                                                     ((void*)0), ((void*)0) );
    if( secure == ((void*)0) )
    {
        msg_Err( p_access, "cannot establish FTP/TLS session on command channel" );
        return -1;
    }
    p_sys->cmd = secure;
    return 0;
}
