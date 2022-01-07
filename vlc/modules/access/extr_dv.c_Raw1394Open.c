
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw1394_portinfo {int dummy; } ;
typedef int stream_t ;
typedef int * raw1394handle_t ;


 int errno ;
 int msg_Err (int *,char*,int ) ;
 int raw1394_destroy_handle (int *) ;
 int raw1394_get_port_info (int *,struct raw1394_portinfo*,int) ;
 int * raw1394_new_handle () ;
 scalar_t__ raw1394_set_port (int *,int) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static raw1394handle_t Raw1394Open( stream_t *p_access, int port )
{
    int n_ports;
    struct raw1394_portinfo pinf[ 16 ];
    raw1394handle_t handle;


    handle = raw1394_new_handle();
    if( !handle )
    {
        msg_Err( p_access, "raw1394 - failed to get handle: %s",
                 vlc_strerror_c(errno) );
        return ((void*)0);
    }

    if( ( n_ports = raw1394_get_port_info( handle, pinf, 16 ) ) < 0 )
    {
        msg_Err( p_access, "raw1394 - failed to get port info: %s",
                 vlc_strerror_c(errno) );
        raw1394_destroy_handle( handle );
        return ((void*)0);
    }


    if( raw1394_set_port( handle, port ) < 0 )
    {
        msg_Err( p_access, "raw1394 - failed to set set port: %s",
                 vlc_strerror_c(errno) );
        return ((void*)0);
    }

    return handle;
}
