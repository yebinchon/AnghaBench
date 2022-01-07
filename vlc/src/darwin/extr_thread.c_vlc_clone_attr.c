
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_thread_t ;
typedef int sigset_t ;
typedef int pthread_attr_t ;


 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int VLC_STACKSIZE ;
 int assert (int) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_setstacksize (int *,int ) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigdelset (int *,int ) ;
 int sigemptyset (int *) ;

__attribute__((used)) static int vlc_clone_attr (vlc_thread_t *th, pthread_attr_t *attr,
                           void *(*entry) (void *), void *data, int priority)
{
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

    (void) priority;




    ret = pthread_attr_setstacksize (attr, (128 * sizeof (void *) * 1024));
    assert (ret == 0);


    ret = pthread_create (th, attr, entry, data);
    pthread_sigmask (SIG_SETMASK, &oldset, ((void*)0));
    pthread_attr_destroy (attr);
    return ret;
}
