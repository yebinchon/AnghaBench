
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct raw1394_portinfo {int dummy; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int * raw1394handle_t ;
struct TYPE_5__ {int * p_avc1394; } ;
typedef TYPE_2__ access_sys_t ;


 int AVCResetHandler ;
 int raw1394_get_port_info (int *,struct raw1394_portinfo*,int) ;
 int * raw1394_new_handle () ;
 int raw1394_set_bus_reset_handler (int *,int ) ;
 scalar_t__ raw1394_set_port (int *,int) ;

__attribute__((used)) static raw1394handle_t AVCOpen( stream_t *p_access, int port )
{
    access_sys_t *p_sys = p_access->p_sys;
    struct raw1394_portinfo pinf[ 16 ];
    int numcards;

    p_sys->p_avc1394 = raw1394_new_handle();
    if( !p_sys->p_avc1394 )
        return ((void*)0);

    numcards = raw1394_get_port_info( p_sys->p_avc1394, pinf, 16 );
    if( numcards < -1 )
        return ((void*)0);
    if( raw1394_set_port( p_sys->p_avc1394, port ) < 0 )
        return ((void*)0);

    raw1394_set_bus_reset_handler( p_sys->p_avc1394, AVCResetHandler );

    return p_sys->p_avc1394;
}
