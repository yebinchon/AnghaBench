
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_thread {int killable; int done_event; int data; int (* entry ) (int ) ;} ;


 int DosPostEventSem (int ) ;
 int stub1 (int ) ;
 int thread_key ;
 int vlc_thread_cleanup (struct vlc_thread*) ;
 int vlc_threadvar_set (int ,struct vlc_thread*) ;

__attribute__((used)) static void vlc_entry( void *p )
{
    struct vlc_thread *th = p;

    vlc_threadvar_set (thread_key, th);
    th->killable = 1;
    th->data = th->entry (th->data);
    DosPostEventSem( th->done_event );
    vlc_thread_cleanup (th);
}
