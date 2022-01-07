
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int proxy_auth; int auth; int * stream; } ;
typedef TYPE_2__ access_sys_t ;


 int vlc_http_auth_Deinit (int *) ;
 int vlc_tls_Close (int *) ;

__attribute__((used)) static void Disconnect( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    if (p_sys->stream != ((void*)0))
        vlc_tls_Close(p_sys->stream);
    p_sys->stream = ((void*)0);

    vlc_http_auth_Deinit( &p_sys->auth );
    vlc_http_auth_Deinit( &p_sys->proxy_auth );
}
