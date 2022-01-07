
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 int O_NONBLOCK ;
 int O_RDONLY ;
 int SNDCTL_DSP_GETCAPS ;
 int errno ;
 scalar_t__ ioctl (int,int ,int*) ;
 int msg_Err (int *,char*,char const*,...) ;
 int vlc_close (int) ;
 int vlc_open (char const*,int) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static bool ProbeAudioDevOss( demux_t *p_demux, const char *psz_device )
{
    int i_caps;
    int i_fd = vlc_open( psz_device, O_RDONLY | O_NONBLOCK );

    if( i_fd < 0 )
    {
        msg_Err( p_demux, "cannot open device %s for OSS audio (%s)",
                 psz_device, vlc_strerror_c(errno) );
        goto open_failed;
    }


    if( ioctl( i_fd, SNDCTL_DSP_GETCAPS, &i_caps ) < 0 )
    {
        msg_Err( p_demux, "cannot get audio caps (%s)",
                 vlc_strerror_c(errno) );
        goto open_failed;
    }

    if( i_fd >= 0 )
        vlc_close( i_fd );

    return 1;

open_failed:
    if( i_fd >= 0 )
        vlc_close( i_fd );
    return 0;
}
