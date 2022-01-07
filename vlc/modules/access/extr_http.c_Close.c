
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int psz_password; int psz_username; int psz_referrer; int psz_user_agent; int psz_icy_title; int psz_icy_genre; int psz_icy_name; int psz_location; int psz_mime; int proxy; scalar_t__ b_proxy; int url; } ;
typedef TYPE_2__ access_sys_t ;


 int Disconnect (TYPE_1__*) ;
 int free (int ) ;
 int vlc_UrlClean (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    stream_t *p_access = (stream_t*)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    vlc_UrlClean( &p_sys->url );
    if( p_sys->b_proxy )
        vlc_UrlClean( &p_sys->proxy );

    free( p_sys->psz_mime );
    free( p_sys->psz_location );

    free( p_sys->psz_icy_name );
    free( p_sys->psz_icy_genre );
    free( p_sys->psz_icy_title );

    free( p_sys->psz_user_agent );
    free( p_sys->psz_referrer );
    free( p_sys->psz_username );
    free( p_sys->psz_password );

    Disconnect( p_access );
}
