
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {scalar_t__ psz_path; } ;
struct TYPE_9__ {scalar_t__ b_unicode; } ;
struct TYPE_11__ {TYPE_2__ url; TYPE_1__ features; int sz_epsv_ip; int cmd; } ;
typedef TYPE_3__ access_sys_t ;


 int * IsASCII (scalar_t__) ;
 int * IsUTF8 (scalar_t__) ;
 scalar_t__ Login (int *,TYPE_3__*,char const*) ;
 int clearCmd (TYPE_3__*) ;
 int ftp_RecvCommand (int *,TYPE_3__*,int *,int *) ;
 scalar_t__ ftp_SendCommand (int *,TYPE_3__*,char*) ;
 int msg_Err (int *,char*,...) ;
 int msg_Info (int *,char*) ;
 scalar_t__ net_GetPeerAddress (int,int ,int *) ;
 int * stub1 (scalar_t__) ;
 int vlc_tls_GetFD (int ) ;

__attribute__((used)) static int Connect( vlc_object_t *p_access, access_sys_t *p_sys, const char *path )
{
    if( Login( p_access, p_sys, path ) < 0 )
        return -1;


    if( ftp_SendCommand( p_access, p_sys, "EPSV ALL" ) < 0 )
    {
        msg_Err( p_access, "cannot request extended passive mode" );
        goto error;
    }

    if( ftp_RecvCommand( p_access, p_sys, ((void*)0), ((void*)0) ) == 2 )
    {
        int fd = vlc_tls_GetFD(p_sys->cmd);
        if( net_GetPeerAddress( fd, p_sys->sz_epsv_ip, ((void*)0) ) )
            goto error;
    }
    else
    {





        msg_Info( p_access, "FTP Extended passive mode disabled" );
        clearCmd( p_sys );

        if( Login( p_access, p_sys, path ) )
            goto error;
    }

    if( p_sys->url.psz_path &&
        (p_sys->features.b_unicode ? IsUTF8 : IsASCII)(p_sys->url.psz_path) == ((void*)0) )
    {
        msg_Err( p_access, "unsupported path: \"%s\"", p_sys->url.psz_path );
        goto error;
    }


    if( ftp_SendCommand( p_access, p_sys, "TYPE I" ) < 0 ||
        ftp_RecvCommand( p_access, p_sys, ((void*)0), ((void*)0) ) != 2 )
    {
        msg_Err( p_access, "cannot set binary transfer mode" );
        goto error;
    }

    return 0;

error:
    clearCmd( p_sys );
    return -1;
}
