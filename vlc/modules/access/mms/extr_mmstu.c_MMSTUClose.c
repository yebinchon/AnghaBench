
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {int url; } ;
typedef TYPE_2__ access_sys_t ;


 int KeepAliveStop (TYPE_1__*) ;
 int MMSClose (TYPE_1__*) ;
 int free (TYPE_2__*) ;
 int vlc_UrlClean (int *) ;

void MMSTUClose( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    KeepAliveStop( p_access );


    MMSClose( p_access );


    vlc_UrlClean( &p_sys->url );

    free( p_sys );
}
