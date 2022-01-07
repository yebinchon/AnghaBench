
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int (* proc ) (int ) ;struct TYPE_2__* next; } ;
typedef TYPE_1__ vlc_cleanup_t ;
struct vlc_thread {int * data; int done_event; TYPE_1__* cleaners; scalar_t__ killed; scalar_t__ killable; int cancel_event; } ;


 int DosPostEventSem (int ) ;
 scalar_t__ DosWaitEventSem (int ,int ) ;
 scalar_t__ NO_ERROR ;
 int _endthread () ;
 int stub1 (int ) ;
 int vlc_cancel_self (struct vlc_thread*) ;
 int vlc_thread_cleanup (struct vlc_thread*) ;
 struct vlc_thread* vlc_thread_self () ;

void vlc_testcancel (void)
{
    struct vlc_thread *th = vlc_thread_self ();
    if (th == ((void*)0))
        return;



    if( DosWaitEventSem( th->cancel_event, 0 ) == NO_ERROR )
        vlc_cancel_self( th );

    if (th->killable && th->killed)
    {
        for (vlc_cleanup_t *p = th->cleaners; p != ((void*)0); p = p->next)
             p->proc (p->data);

        DosPostEventSem( th->done_event );
        th->data = ((void*)0);
        vlc_thread_cleanup (th);
        _endthread();
    }
}
