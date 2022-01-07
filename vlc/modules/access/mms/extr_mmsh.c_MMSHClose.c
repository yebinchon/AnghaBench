
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int url; int proxy; scalar_t__ b_proxy; struct TYPE_7__* p_header; } ;
typedef TYPE_2__ access_sys_t ;


 int Stop (TYPE_1__*) ;
 int free (TYPE_2__*) ;
 int vlc_UrlClean (int *) ;

void MMSHClose ( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    Stop( p_access );

    free( p_sys->p_header );

    if( p_sys->b_proxy )
        vlc_UrlClean( &p_sys->proxy );
    vlc_UrlClean( &p_sys->url );
    free( p_sys );
}
