
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_access_out_t ;
struct TYPE_6__ {scalar_t__ p_shout; } ;
typedef TYPE_2__ sout_access_out_sys_t ;


 int free (TYPE_2__*) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int shout_close (scalar_t__) ;
 int shout_free (scalar_t__) ;
 int shout_shutdown () ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_access_out_t *p_access = (sout_access_out_t*)p_this;
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    if( p_sys->p_shout )
    {
        shout_close( p_sys->p_shout );
        shout_free( p_sys->p_shout );
        shout_shutdown();
    }
    free( p_sys );
    msg_Dbg( p_access, "shout access output closed" );
}
