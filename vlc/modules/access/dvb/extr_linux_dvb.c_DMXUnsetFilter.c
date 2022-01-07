
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int DMX_STOP ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int errno ;
 scalar_t__ ioctl (int,int ) ;
 int msg_Dbg (int *,char*,int) ;
 int msg_Err (int *,char*,int ) ;
 int vlc_close (int) ;
 int vlc_strerror_c (int ) ;

int DMXUnsetFilter( vlc_object_t *p_access, int i_fd )
{
    if( ioctl( i_fd, DMX_STOP ) < 0 )
    {
        msg_Err( p_access, "stopping demux failed: %s",
                 vlc_strerror_c(errno) );
        return VLC_EGENERIC;
    }

    msg_Dbg( p_access, "DMXUnsetFilter: closing demux %d", i_fd );
    vlc_close( i_fd );
    return VLC_SUCCESS;
}
