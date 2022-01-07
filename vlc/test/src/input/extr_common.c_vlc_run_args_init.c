
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_run_args {int verbose; void* test_demux_controls; int name; } ;


 int getenv (char*) ;
 void* getenv_atoi (char*) ;
 int memset (struct vlc_run_args*,int ,int) ;

void vlc_run_args_init(struct vlc_run_args *args)
{
    memset(args, 0, sizeof(struct vlc_run_args));
    args->verbose = getenv_atoi("V");
    if (args->verbose >= 10)
        args->verbose = 9;

    args->name = getenv("VLC_TARGET");
    args->test_demux_controls = getenv_atoi("VLC_DEMUX_CONTROLS");
}
