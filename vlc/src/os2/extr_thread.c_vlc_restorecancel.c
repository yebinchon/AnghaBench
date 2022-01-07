
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_thread {int killable; } ;


 int assert (int) ;
 struct vlc_thread* vlc_thread_self () ;

void vlc_restorecancel (int state)
{
    struct vlc_thread *th = vlc_thread_self ();
    assert (state == 0 || state == 1);

    if (th == ((void*)0))
        return;

    assert (!th->killable);
    th->killable = state != 0;
}
