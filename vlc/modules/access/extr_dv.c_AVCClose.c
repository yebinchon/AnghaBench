
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int * p_avc1394; } ;
typedef TYPE_2__ access_sys_t ;


 int raw1394_destroy_handle (int *) ;

__attribute__((used)) static void AVCClose( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->p_avc1394 )
    {
        raw1394_destroy_handle( p_sys->p_avc1394 );
        p_sys->p_avc1394 = ((void*)0);
    }
}
