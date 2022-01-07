
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int inhibit; TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_inhibit_t ;
struct TYPE_7__ {int attr; int timer; } ;
typedef TYPE_2__ vlc_inhibit_sys_t ;
typedef int sigset_t ;


 int Inhibit ;
 int POSIX_SPAWN_SETSIGDEF ;
 int POSIX_SPAWN_SETSIGMASK ;
 int SIGPIPE ;
 int Timer ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int posix_spawnattr_destroy (int *) ;
 int posix_spawnattr_init (int *) ;
 int posix_spawnattr_setflags (int *,int) ;
 int posix_spawnattr_setsigdefault (int *,int *) ;
 int posix_spawnattr_setsigmask (int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 scalar_t__ vlc_timer_create (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    vlc_inhibit_t *ih = (vlc_inhibit_t *)obj;
    vlc_inhibit_sys_t *p_sys = malloc (sizeof (*p_sys));
    if (p_sys == ((void*)0))
        return VLC_ENOMEM;

    posix_spawnattr_init (&p_sys->attr);

    {
        sigset_t set;

        sigemptyset (&set);
        posix_spawnattr_setsigmask (&p_sys->attr, &set);
        sigaddset (&set, SIGPIPE);
        posix_spawnattr_setsigdefault (&p_sys->attr, &set);
        posix_spawnattr_setflags (&p_sys->attr, POSIX_SPAWN_SETSIGDEF
                                              | POSIX_SPAWN_SETSIGMASK);
    }

    ih->p_sys = p_sys;
    if (vlc_timer_create (&p_sys->timer, Timer, ih))
    {
        posix_spawnattr_destroy (&p_sys->attr);
        free (p_sys);
        return VLC_ENOMEM;
    }

    ih->inhibit = Inhibit;
    return VLC_SUCCESS;
}
