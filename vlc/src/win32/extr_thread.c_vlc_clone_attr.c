
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct vlc_thread* vlc_thread_t ;
struct TYPE_2__ {int lock; int * addr; } ;
struct vlc_thread {void* (* entry ) (void*) ;int killable; int * id; TYPE_1__ wait; int * cleaners; int killed; void* data; } ;
typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int ENOMEM ;
 int InitializeCriticalSection (int *) ;
 int SetThreadPriority (int *,int) ;
 uintptr_t _beginthreadex (int *,int ,int ,struct vlc_thread*,int ,int *) ;
 int atomic_init (int *,int) ;
 int errno ;
 int free (struct vlc_thread*) ;
 struct vlc_thread* malloc (int) ;
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
    th->killable = 0;
    atomic_init(&th->killed, 0);
    th->cleaners = ((void*)0);
    th->wait.addr = ((void*)0);
    InitializeCriticalSection(&th->wait.lock);





    uintptr_t h = _beginthreadex (((void*)0), 0, vlc_entry, th, 0, ((void*)0));
    if (h == 0)
    {
        int err = errno;
        free (th);
        return err;
    }

    if (detached)
    {
        CloseHandle((HANDLE)h);
        th->id = ((void*)0);
    }
    else
        th->id = (HANDLE)h;

    if (p_handle != ((void*)0))
        *p_handle = th;

    if (priority)
        SetThreadPriority (th->id, priority);

    return 0;
}
