
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_6__ {int * stream; } ;
typedef TYPE_2__ access_sys_t ;


 int msg_Dbg (TYPE_1__*,char*) ;
 int vlc_tls_Close (int *) ;

__attribute__((used)) static void Stop( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    msg_Dbg( p_access, "closing stream" );
    if( p_sys->stream != ((void*)0) )
    {
        vlc_tls_Close( p_sys->stream );
        p_sys->stream = ((void*)0);
    }
}
