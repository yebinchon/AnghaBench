
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int * p_creds; int tlsmode; } ;
typedef TYPE_1__ access_sys_t ;


 int EXPLICIT ;
 int IMPLICIT ;
 int NONE ;
 int strncmp (char const*,char*,int) ;
 int * vlc_tls_ClientCreate (int *) ;

__attribute__((used)) static int readTLSMode( vlc_object_t *obj, access_sys_t *p_sys,
                        const char * psz_access )
{
    if ( !strncmp( psz_access, "ftps", 4 ) )
        p_sys->tlsmode = IMPLICIT;
    else
    if ( !strncmp( psz_access, "ftpes", 5 ) )
        p_sys->tlsmode = EXPLICIT;
    else
    {
        p_sys->p_creds = ((void*)0);
        p_sys->tlsmode = NONE;
        return 0;
    }

    p_sys->p_creds = vlc_tls_ClientCreate( obj );
    return (p_sys->p_creds != ((void*)0)) ? 0 : -1;
}
