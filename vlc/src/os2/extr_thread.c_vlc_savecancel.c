
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_thread {int killable; } ;


 struct vlc_thread* vlc_thread_self () ;

int vlc_savecancel (void)
{
    int state;

    struct vlc_thread *th = vlc_thread_self ();
    if (th == ((void*)0))
        return 0;

    state = th->killable;
    th->killable = 0;
    return state;
}
