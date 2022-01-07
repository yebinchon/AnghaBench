
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int * data; } ;
typedef TYPE_1__ access_sys_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int ftp_RecvCommand (int *,TYPE_1__*,int *,int *) ;
 scalar_t__ ftp_SendCommand (int *,TYPE_1__*,char*) ;
 int msg_Warn (int *,char*) ;
 int vlc_tls_Close (int *) ;

__attribute__((used)) static int ftp_StopStream ( vlc_object_t *p_access, access_sys_t *p_sys )
{
    int ret = VLC_SUCCESS;

    if( ftp_SendCommand( p_access, p_sys, "ABOR" ) < 0 )
    {
        msg_Warn( p_access, "cannot abort file" );
        ret = VLC_EGENERIC;
    }

    if( p_sys->data != ((void*)0) )
    {
        vlc_tls_Close( p_sys->data );
        p_sys->data = ((void*)0);

        if( ret == VLC_SUCCESS )

            ftp_RecvCommand( p_access, p_sys, ((void*)0), ((void*)0) );
    }

    if( ret == VLC_SUCCESS )

        ftp_RecvCommand( p_access, p_sys, ((void*)0), ((void*)0) );

    return ret;
}
