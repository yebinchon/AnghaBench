
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_run_args {int dummy; } ;
typedef int stream_t ;
struct TYPE_3__ {int p_libvlc_int; } ;
typedef TYPE_1__ libvlc_instance_t ;


 int VLC_OBJECT (int ) ;
 int demux_process_stream (struct vlc_run_args const*,int *) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int * vlc_stream_MemoryNew (int ,void*,size_t,int) ;

int libvlc_demux_process_memory(libvlc_instance_t *vlc,
                                const struct vlc_run_args *args,
                                const unsigned char *buf, size_t length)
{
    stream_t *s = vlc_stream_MemoryNew(VLC_OBJECT(vlc->p_libvlc_int),
                                       (void *)buf, length, 1);
    if (s == ((void*)0))
        fprintf(stderr, "Error: cannot create input stream\n");

    return demux_process_stream(args, s);
}
