
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_run_args {int dummy; } ;


 int fprintf (int ,char*,char*) ;
 int stderr ;
 int vlc_demux_process_path (struct vlc_run_args*,char const*) ;
 int vlc_run_args_init (struct vlc_run_args*) ;

int main(int argc, char *argv[])
{
    const char *filename;
    struct vlc_run_args args;
    vlc_run_args_init(&args);

    switch (argc)
    {
        case 2:
            filename = argv[argc - 1];
            break;
        default:
            fprintf(stderr, "Usage: [VLC_TARGET=demux] %s <filename>\n", argv[0]);
            return 1;
    }

    return -vlc_demux_process_path(&args, filename);
}
