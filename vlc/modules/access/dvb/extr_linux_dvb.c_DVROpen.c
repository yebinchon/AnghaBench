
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int dvr ;
struct TYPE_3__ {int i_handle; } ;
typedef TYPE_1__ dvb_sys_t ;


 char* DVR ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int errno ;
 int fcntl (int ,int ,int ) ;
 int msg_Dbg (int *,char*,char*) ;
 int msg_Err (int *,char*,...) ;
 int msg_Warn (int *,char*,int ) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int) ;
 unsigned int var_GetInteger (int *,char*) ;
 int vlc_open (char*,int ) ;
 int vlc_strerror_c (int ) ;

int DVROpen( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    unsigned int i_adapter, i_device;
    char dvr[128];

    i_adapter = var_GetInteger( p_access, "dvb-adapter" );
    i_device = var_GetInteger( p_access, "dvb-device" );

    if( snprintf( dvr, sizeof(dvr), DVR, i_adapter, i_device )
            >= (int)sizeof(dvr) )
    {
        msg_Err( p_access, "snprintf() truncated string for DVR" );
        dvr[sizeof(dvr) - 1] = '\0';
    }

    msg_Dbg( p_access, "Opening device %s", dvr );
    if( (p_sys->i_handle = vlc_open(dvr, O_RDONLY)) < 0 )
    {
        msg_Err( p_access, "DVROpen: opening device failed: %s",
                 vlc_strerror_c(errno) );
        return VLC_EGENERIC;
    }

    if( fcntl( p_sys->i_handle, F_SETFL, O_NONBLOCK ) == -1 )
    {
        msg_Warn( p_access, "DVROpen: couldn't set non-blocking mode: %s",
                  vlc_strerror_c(errno) );
    }

    return VLC_SUCCESS;
}
