
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_run_args {int dummy; } ;
typedef int libvlc_instance_t ;


 int * libvlc_create (struct vlc_run_args const*) ;
 int libvlc_demux_process_memory (int *,struct vlc_run_args const*,unsigned char const*,size_t) ;
 int libvlc_release (int *) ;

int vlc_demux_process_memory(const struct vlc_run_args *args,
                             const unsigned char *buf, size_t length)
{
    libvlc_instance_t *vlc = libvlc_create(args);
    if (vlc == ((void*)0))
        return -1;

    int ret = libvlc_demux_process_memory(vlc, args, buf, length);
    libvlc_release(vlc);
    return ret;
}
