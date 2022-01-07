
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ToxAVCall ;
struct TYPE_5__ {int mutex; int calls_head; scalar_t__ calls; scalar_t__ msi; } ;
typedef TYPE_1__ ToxAV ;


 int * call_get (TYPE_1__*,int ) ;
 int call_kill_transmission (int *) ;
 int * call_remove (int *) ;
 int free (TYPE_1__*) ;
 scalar_t__ msi_kill (scalar_t__) ;
 int pthread_mutex_destroy (int ) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;

void toxav_kill(ToxAV *av)
{
    if (av == ((void*)0))
        return;

    pthread_mutex_lock(av->mutex);


    while (av->msi && msi_kill(av->msi) != 0) {
        pthread_mutex_unlock(av->mutex);
        pthread_mutex_lock(av->mutex);
    }


    if (av->calls) {
        ToxAVCall *it = call_get(av, av->calls_head);

        while (it) {
            call_kill_transmission(it);
            it = call_remove(it);
        }
    }

    pthread_mutex_unlock(av->mutex);
    pthread_mutex_destroy(av->mutex);

    free(av);
}
