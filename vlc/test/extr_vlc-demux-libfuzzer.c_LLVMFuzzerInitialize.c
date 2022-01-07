
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int args ;
 scalar_t__ libvlc_create (int *) ;
 scalar_t__ vlc ;
 int vlc_run_args_init (int *) ;

int LLVMFuzzerInitialize(int *argc, char ***argv)
{
    (void) argc; (void) argv;

    vlc_run_args_init(&args);
    vlc = libvlc_create(&args);

    return vlc ? 0 : -1;
}
