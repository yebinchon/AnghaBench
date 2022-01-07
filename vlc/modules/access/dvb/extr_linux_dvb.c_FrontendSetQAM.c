
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {unsigned int symbol_rate; int modulation; int fec_inner; } ;
struct TYPE_9__ {TYPE_2__ qam; } ;
struct dvb_frontend_parameters {TYPE_3__ u; int inversion; void* frequency; } ;
struct dvb_frontend_event {TYPE_3__ u; int inversion; void* frequency; } ;
struct TYPE_7__ {unsigned int symbol_rate_max; unsigned int symbol_rate_min; } ;
struct TYPE_10__ {TYPE_1__ info; } ;
typedef TYPE_4__ frontend_t ;
struct TYPE_11__ {int i_frontend_handle; TYPE_4__* p_frontend; } ;
typedef TYPE_5__ dvb_sys_t ;


 int DecodeInversion (int *) ;
 scalar_t__ EWOULDBLOCK ;
 int FEC_NONE ;
 int FE_GET_EVENT ;
 int FE_SET_FRONTEND ;
 int QAM_AUTO ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct dvb_frontend_parameters*) ;
 int msg_Err (int *,char*,int ) ;
 void* var_GetInteger (int *,char*) ;
 int vlc_strerror_c (scalar_t__) ;

__attribute__((used)) static int FrontendSetQAM( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    frontend_t *p_frontend = p_sys->p_frontend;
    struct dvb_frontend_parameters fep;
    unsigned int i_val;



    fep.frequency = var_GetInteger( p_access, "dvb-frequency" );

    fep.inversion = DecodeInversion( p_access );





    i_val = var_GetInteger( p_access, "dvb-srate" );
    if( i_val < p_frontend->info.symbol_rate_max &&
        i_val > p_frontend->info.symbol_rate_min )
        fep.u.qam.symbol_rate = i_val;

    fep.u.qam.fec_inner = FEC_NONE;

    fep.u.qam.modulation = QAM_AUTO;


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
