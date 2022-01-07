
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int modulation; } ;
struct TYPE_6__ {TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int frequency; } ;
struct dvb_frontend_event {TYPE_2__ u; int frequency; } ;
struct TYPE_7__ {int i_frontend_handle; } ;
typedef TYPE_3__ dvb_sys_t ;


 scalar_t__ EWOULDBLOCK ;
 int FE_GET_EVENT ;
 int FE_SET_FRONTEND ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VSB_8 ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct dvb_frontend_parameters*) ;
 int msg_Err (int *,char*,int ) ;
 int var_GetInteger (int *,char*) ;
 int vlc_strerror_c (scalar_t__) ;

__attribute__((used)) static int FrontendSetATSC( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    struct dvb_frontend_parameters fep;



    fep.frequency = var_GetInteger( p_access, "dvb-frequency" );
    fep.u.vsb.modulation = VSB_8;


    for( ; ; )
    {
        struct dvb_frontend_event event;
        if ( ioctl( p_sys->i_frontend_handle, FE_GET_EVENT, &event ) < 0
              && errno == EWOULDBLOCK )
            break;
    }


    if( ioctl( p_sys->i_frontend_handle, FE_SET_FRONTEND, &fep ) < 0 )
    {
        msg_Err( p_access, "frontend error: %s", vlc_strerror_c(errno) );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
