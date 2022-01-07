
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vlc_run_args {int dummy; } ;
typedef int stream_t ;
struct TYPE_4__ {int p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int VLC_OBJECT (int ) ;
 int demux_process_stream (struct vlc_run_args const*,int *) ;
 int fprintf (int ,char*,char const*) ;
 TYPE_1__* libvlc_create (struct vlc_run_args const*) ;
 int libvlc_release (TYPE_1__*) ;
 int stderr ;
 int * vlc_access_NewMRL (int ,char const*) ;

int vlc_demux_process_url(const struct vlc_run_args *args, const char *url)
{
    libvlc_instance_t *vlc = libvlc_create(args);
    if (vlc == ((void*)0))
        return -1;

    stream_t *s = vlc_access_NewMRL(VLC_OBJECT(vlc->p_libvlc_int), url);
    if (s == ((void*)0))
        fprintf(stderr, "Error: cannot create input stream: %s\n", url);

    int ret = demux_process_stream(args, s);
    libvlc_release(vlc);
    return ret;
}
