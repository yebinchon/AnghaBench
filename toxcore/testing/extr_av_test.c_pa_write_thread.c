
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int data; } ;
typedef TYPE_1__ frame ;
struct TYPE_5__ {int arb_mutex; int arb; } ;
typedef TYPE_2__ CallControl ;


 scalar_t__ Pa_IsStreamActive (int ) ;
 int Pa_WriteStream (int ,int ,int ) ;
 int adout ;
 int c_sleep (int) ;
 int free (TYPE_1__*) ;
 int pthread_mutex_lock (int ) ;
 int pthread_mutex_unlock (int ) ;
 scalar_t__ rb_read (int ,void**) ;

void *pa_write_thread (void *d)
{



    CallControl *cc = d;

    while (Pa_IsStreamActive(adout)) {
        frame *f;
        pthread_mutex_lock(cc->arb_mutex);

        if (rb_read(cc->arb, (void **)&f)) {
            pthread_mutex_unlock(cc->arb_mutex);
            Pa_WriteStream(adout, f->data, f->size);
            free(f);
        } else {
            pthread_mutex_unlock(cc->arb_mutex);
            c_sleep(10);
        }
    }
}
