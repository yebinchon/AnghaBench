
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* p_access; } ;
typedef TYPE_1__ event_thread_t ;
struct TYPE_5__ {int i_node; } ;
typedef TYPE_2__ access_sys_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;


 int AVCStop (TYPE_3__*,int ) ;

__attribute__((used)) static void Raw1394EventThreadCleanup( void *obj )
{
    event_thread_t *p_ev = (event_thread_t *)obj;
    access_sys_t *sys = p_ev->p_access->p_sys;

    AVCStop( p_ev->p_access, sys->i_node );
}
