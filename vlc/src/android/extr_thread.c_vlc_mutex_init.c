
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_mutex_t ;
typedef int pthread_mutexattr_t ;


 int PTHREAD_MUTEX_DEFAULT ;
 int PTHREAD_MUTEX_ERRORCHECK ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;

void vlc_mutex_init( vlc_mutex_t *p_mutex )
{
    pthread_mutexattr_t attr;

    pthread_mutexattr_init (&attr);



    pthread_mutexattr_settype (&attr, PTHREAD_MUTEX_ERRORCHECK);

    pthread_mutex_init (p_mutex, &attr);
    pthread_mutexattr_destroy( &attr );
}
