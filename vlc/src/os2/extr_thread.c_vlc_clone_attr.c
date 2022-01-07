
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vlc_thread* vlc_thread_t ;
struct vlc_thread {void* (* entry ) (void*) ;int detached; int killable; int killed; scalar_t__ cancel_sock; int done_event; int cancel_event; scalar_t__ tid; int * cleaners; void* data; } ;


 int AF_LOCAL ;
 int DosCloseEventSem (int ) ;
 scalar_t__ DosCreateEventSem (int *,int *,int ,int ) ;
 int DosSetPriority (int ,int ,int ,scalar_t__) ;
 int ENOMEM ;
 int FALSE ;
 int HIBYTE (int) ;
 int LOBYTE (int) ;
 int PRTYS_THREAD ;
 int SOCK_STREAM ;
 scalar_t__ _beginthread (int ,int *,int,struct vlc_thread*) ;
 int free (struct vlc_thread*) ;
 struct vlc_thread* malloc (int) ;
 scalar_t__ socket (int ,int ,int ) ;
 int soclose (scalar_t__) ;
 scalar_t__ unlikely (int ) ;
 int vlc_entry ;

__attribute__((used)) static int vlc_clone_attr (vlc_thread_t *p_handle, bool detached,
                           void *(*entry) (void *), void *data, int priority)
{
    struct vlc_thread *th = malloc (sizeof (*th));
    if (unlikely(th == ((void*)0)))
        return ENOMEM;
    th->entry = entry;
    th->data = data;
    th->detached = detached;
    th->killable = 0;
    th->killed = 0;
    th->cleaners = ((void*)0);

    if( DosCreateEventSem (((void*)0), &th->cancel_event, 0, FALSE))
        goto error;
    if( DosCreateEventSem (((void*)0), &th->done_event, 0, FALSE))
        goto error;

    th->cancel_sock = socket (AF_LOCAL, SOCK_STREAM, 0);
    if( th->cancel_sock < 0 )
        goto error;

    th->tid = _beginthread (vlc_entry, ((void*)0), 1024 * 1024, th);
    if((int)th->tid == -1)
        goto error;

    if (p_handle != ((void*)0))
        *p_handle = th;

    if (priority)
        DosSetPriority(PRTYS_THREAD,
                       HIBYTE(priority),
                       LOBYTE(priority),
                       th->tid);

    return 0;

error:
    soclose (th->cancel_sock);
    DosCloseEventSem (th->cancel_event);
    DosCloseEventSem (th->done_event);
    free (th);

    return ENOMEM;
}
