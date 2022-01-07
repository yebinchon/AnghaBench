
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cmd; } ;
typedef TYPE_1__ access_sys_t ;


 int vlc_tls_Close (int *) ;

__attribute__((used)) static void clearCmd( access_sys_t *p_sys )
{
    if( p_sys->cmd != ((void*)0) )
    {
        vlc_tls_Close( p_sys->cmd );
        p_sys->cmd = ((void*)0);
    }
}
