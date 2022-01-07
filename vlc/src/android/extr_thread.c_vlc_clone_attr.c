
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* vlc_thread_t ;
typedef int sigset_t ;
typedef int pthread_attr_t ;
struct TYPE_6__ {int lock; int * addr; } ;
struct TYPE_7__ {int killable; void* (* entry ) (void*) ;int thread; TYPE_1__ wait; void* data; int killed; int finished; } ;


 int ENOMEM ;
 int PTHREAD_CREATE_DETACHED ;
 int PTHREAD_CREATE_JOINABLE ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int atomic_store (int *,int) ;
 int detached_thread ;
 int joinable_thread ;
 TYPE_2__* malloc (int) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,TYPE_2__*) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigdelset (int *,int ) ;
 int sigemptyset (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_init (int *) ;
 int vlc_sem_init (int *,int ) ;

__attribute__((used)) static int vlc_clone_attr (vlc_thread_t *th, void *(*entry) (void *),
                           void *data, bool detach)
{
    vlc_thread_t thread = malloc (sizeof (*thread));
    if (unlikely(thread == ((void*)0)))
        return ENOMEM;

    int ret;

    sigset_t oldset;
    {
        sigset_t set;
        sigemptyset (&set);
        sigdelset (&set, SIGHUP);
        sigaddset (&set, SIGINT);
        sigaddset (&set, SIGQUIT);
        sigaddset (&set, SIGTERM);

        sigaddset (&set, SIGPIPE);
        pthread_sigmask (SIG_BLOCK, &set, &oldset);
    }

    if (!detach)
        vlc_sem_init(&thread->finished, 0);
    atomic_store(&thread->killed, 0);
    thread->killable = 1;
    thread->entry = entry;
    thread->data = data;
    thread->wait.addr = ((void*)0);
    vlc_mutex_init(&thread->wait.lock);

    pthread_attr_t attr;
    pthread_attr_init (&attr);
    pthread_attr_setdetachstate (&attr, detach ? PTHREAD_CREATE_DETACHED
                                               : PTHREAD_CREATE_JOINABLE);

    ret = pthread_create (&thread->thread, &attr,
                          detach ? detached_thread : joinable_thread, thread);
    pthread_attr_destroy (&attr);

    pthread_sigmask (SIG_SETMASK, &oldset, ((void*)0));
    *th = thread;
    return ret;
}
