
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {TYPE_1__* p_frontend; } ;
typedef TYPE_3__ dvb_sys_t ;
struct TYPE_10__ {int type; int name; } ;
struct TYPE_9__ {scalar_t__ i_last_status; TYPE_2__ info; } ;






 int FrontendSetATSC (int *,TYPE_3__*) ;
 int FrontendSetOFDM (int *,TYPE_3__*) ;
 int FrontendSetQAM (int *,TYPE_3__*) ;
 int FrontendSetQPSK (int *,TYPE_3__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*,...) ;

int FrontendSet( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    switch( p_sys->p_frontend->info.type )
    {

    case 128:
        if( FrontendSetQPSK( p_access, p_sys ) )
        {
            msg_Err( p_access, "DVB-S tuning error" );
            return VLC_EGENERIC;
        }
        break;


    case 129:
        if( FrontendSetQAM( p_access, p_sys ) )
        {
            msg_Err( p_access, "DVB-C tuning error" );
            return VLC_EGENERIC;
        }
        break;


    case 130:
        if( FrontendSetOFDM( p_access, p_sys ) )
        {
            msg_Err( p_access, "DVB-T tuning error" );
            return VLC_EGENERIC;
        }
        break;


    case 131:
        if( FrontendSetATSC( p_access, p_sys ) )
        {
            msg_Err( p_access, "ATSC tuning error" );
            return VLC_EGENERIC;
        }
        break;

    default:
        msg_Err( p_access, "tuner type %s not supported",
                 p_sys->p_frontend->info.name );
        return VLC_EGENERIC;
    }
    p_sys->p_frontend->i_last_status = 0;
    return VLC_SUCCESS;
}
