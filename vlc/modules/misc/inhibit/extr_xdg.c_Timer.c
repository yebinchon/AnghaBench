
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_5__ {int attr; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;
typedef int pid_t ;


 int environ ;
 int msg_Warn (TYPE_1__*,char*,int ) ;
 int posix_spawnp (int *,char*,int *,int *,char**,int ) ;
 int vlc_strerror_c (int) ;
 int waitpid (int ,int*,int ) ;

__attribute__((used)) static void Timer (void *data)
{
    vlc_inhibit_t *ih = data;
    vlc_inhibit_sys_t *sys = ih->p_sys;
    char *argv[3] = {
        (char *)"xdg-screensaver", (char *)"reset", ((void*)0)
    };
    pid_t pid;

    int err = posix_spawnp (&pid, "xdg-screensaver", ((void*)0), &sys->attr,
                            argv, environ);
    if (err == 0)
    {
        int status;

        while (waitpid (pid, &status, 0) == -1);
    }
    else
        msg_Warn (ih, "error starting xdg-screensaver: %s",
                  vlc_strerror_c(err));
}
