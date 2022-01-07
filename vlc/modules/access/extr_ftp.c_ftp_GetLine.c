
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int cmd; } ;
typedef TYPE_1__ access_sys_t ;


 int msg_Err (int *,char*) ;
 char* vlc_tls_GetLine (int ) ;

__attribute__((used)) static char *ftp_GetLine( vlc_object_t *obj, access_sys_t *sys )
{
    char *resp = vlc_tls_GetLine( sys->cmd );
    if( resp == ((void*)0) )
        msg_Err( obj, "response failure" );
    return resp;
}
