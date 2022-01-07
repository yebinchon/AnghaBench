
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numaudios; int dev; int caps; int name; int devnode; int enabled; int license; int versionnum; int version; int product; } ;
typedef TYPE_1__ oss_sysinfo ;
typedef TYPE_1__ oss_audioinfo ;
typedef int audio_output_t ;


 int O_WRONLY ;
 int PCM_CAP_HIDDEN ;
 int PCM_CAP_MODEM ;
 int PCM_CAP_OUTPUT ;
 int SNDCTL_AUDIOINFO ;
 int SNDCTL_SYSINFO ;
 int aout_HotplugReport (int *,int ,int ) ;
 int errno ;
 scalar_t__ ioctl (int,int ,TYPE_1__*) ;
 int msg_Dbg (int *,char*,int ,int ,int ,int ) ;
 int msg_Err (int *,char*,int ) ;
 int msg_Warn (int *,char*,int,int ) ;
 int vlc_close (int) ;
 int vlc_open (char*,int ) ;
 int vlc_strerror (int ) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int DevicesEnum (audio_output_t *aout)
{
    int fd = vlc_open ("/dev/dsp", O_WRONLY);
    if (fd == -1)
        return -1;

    oss_sysinfo si;
    int n = -1;

    if (ioctl (fd, SNDCTL_SYSINFO, &si) < 0)
    {
        msg_Err (aout, "cannot get system infos: %s", vlc_strerror(errno));
        goto out;
    }

    msg_Dbg (aout, "using %s version %s (0x%06X) under %s", si.product,
             si.version, si.versionnum, si.license);

    for (int i = 0; i < si.numaudios; i++)
    {
        oss_audioinfo ai = { .dev = i };

        if (ioctl (fd, SNDCTL_AUDIOINFO, &ai) < 0)
        {
            msg_Warn (aout, "cannot get device %d infos: %s", i,
                      vlc_strerror_c(errno));
            continue;
        }
        if (ai.caps & (PCM_CAP_HIDDEN|PCM_CAP_MODEM))
            continue;
        if (!(ai.caps & PCM_CAP_OUTPUT))
            continue;
        if (!ai.enabled)
            continue;

        aout_HotplugReport (aout, ai.devnode, ai.name);
        n++;
    }
out:
    vlc_close (fd);
    return n;
}
