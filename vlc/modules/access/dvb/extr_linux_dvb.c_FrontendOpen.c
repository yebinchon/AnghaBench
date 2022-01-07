
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {int type; } ;
struct TYPE_9__ {TYPE_1__ info; } ;
typedef TYPE_2__ frontend_t ;
typedef int frontend ;
struct TYPE_10__ {int i_frontend_handle; TYPE_2__* p_frontend; } ;
typedef TYPE_3__ dvb_sys_t ;






 char* FRONTEND ;
 scalar_t__ FrontendInfo (int *,TYPE_3__*) ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int errno ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Err (int *,char*,...) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int) ;
 int strncmp (char const*,char*,int) ;
 int var_GetBool (int *,char*) ;
 unsigned int var_GetInteger (int *,char*) ;
 int vlc_close (int ) ;
 int vlc_open (char*,int) ;
 int vlc_strerror_c (int ) ;

int FrontendOpen( vlc_object_t *p_access, dvb_sys_t *p_sys, const char *psz_access )
{
    frontend_t * p_frontend;
    unsigned int i_adapter, i_device;
    bool b_probe;
    char frontend[128];

    i_adapter = var_GetInteger( p_access, "dvb-adapter" );
    i_device = var_GetInteger( p_access, "dvb-device" );
    b_probe = var_GetBool( p_access, "dvb-probe" );

    if( snprintf( frontend, sizeof(frontend), FRONTEND, i_adapter, i_device ) >= (int)sizeof(frontend) )
    {
        msg_Err( p_access, "snprintf() truncated string for FRONTEND" );
        frontend[sizeof(frontend) - 1] = '\0';
    }

    p_sys->p_frontend = p_frontend = malloc( sizeof(frontend_t) );
    if( !p_frontend )
        return VLC_ENOMEM;

    msg_Dbg( p_access, "Opening device %s", frontend );
    if( (p_sys->i_frontend_handle = vlc_open(frontend, O_RDWR | O_NONBLOCK)) < 0 )
    {
        msg_Err( p_access, "FrontEndOpen: opening device failed: %s",
                 vlc_strerror_c(errno) );
        free( p_frontend );
        return VLC_EGENERIC;
    }

    if( b_probe )
    {
        const char * psz_expected = ((void*)0);
        const char * psz_real;

        if( FrontendInfo( p_access, p_sys ) < 0 )
        {
            vlc_close( p_sys->i_frontend_handle );
            free( p_frontend );
            return VLC_EGENERIC;
        }

        switch( p_frontend->info.type )
        {
        case 130:
            psz_real = "DVB-T";
            break;
        case 129:
            psz_real = "DVB-C";
            break;
        case 128:
            psz_real = "DVB-S";
            break;
        case 131:
            psz_real = "ATSC";
            break;
        default:
            psz_real = "unknown";
        }


        if( (!strncmp( psz_access, "qpsk", 4 ) ||
             !strncmp( psz_access, "dvb-s", 5 ) ||
             !strncmp( psz_access, "satellite", 9 ) ) &&
             (p_frontend->info.type != 128) )
        {
            psz_expected = "DVB-S";
        }
        if( (!strncmp( psz_access, "cable", 5 ) ||
             !strncmp( psz_access, "dvb-c", 5 ) ) &&
             (p_frontend->info.type != 129) )
        {
            psz_expected = "DVB-C";
        }
        if( (!strncmp( psz_access, "terrestrial", 11 ) ||
             !strncmp( psz_access, "dvb-t", 5 ) ) &&
             (p_frontend->info.type != 130) )
        {
            psz_expected = "DVB-T";
        }

        if( (!strncmp( psz_access, "usdigital", 9 ) ||
             !strncmp( psz_access, "atsc", 4 ) ) &&
             (p_frontend->info.type != 131) )
        {
            psz_expected = "ATSC";
        }

        if( psz_expected != ((void*)0) )
        {
            msg_Err( p_access, "requested type %s not supported by %s tuner",
                     psz_expected, psz_real );
            vlc_close( p_sys->i_frontend_handle );
            free( p_frontend );
            return VLC_EGENERIC;
        }
    }
    else
    {
        msg_Dbg( p_access, "using default values for frontend info" );

        msg_Dbg( p_access, "method of access is %s", psz_access );
        p_frontend->info.type = 128;
        if( !strncmp( psz_access, "qpsk", 4 ) ||
            !strncmp( psz_access, "dvb-s", 5 ) )
            p_frontend->info.type = 128;
        else if( !strncmp( psz_access, "cable", 5 ) ||
                 !strncmp( psz_access, "dvb-c", 5 ) )
            p_frontend->info.type = 129;
        else if( !strncmp( psz_access, "terrestrial", 11 ) ||
                 !strncmp( psz_access, "dvb-t", 5 ) )
            p_frontend->info.type = 130;
        else if( !strncmp( psz_access, "usdigital", 9 ) ||
                 !strncmp( psz_access, "atsc", 4 ) )
            p_frontend->info.type = 131;
    }

    return VLC_SUCCESS;
}
