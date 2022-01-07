
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mutex; int tls; int state; } ;
typedef TYPE_1__ opj_thread_pool_t ;


 int OPJWTS_OK ;
 scalar_t__ opj_calloc (int,int) ;
 int opj_free (TYPE_1__*) ;
 int opj_mutex_create () ;
 int opj_thread_pool_destroy (TYPE_1__*) ;
 int opj_thread_pool_setup (TYPE_1__*,int) ;
 int opj_tls_new () ;

opj_thread_pool_t* opj_thread_pool_create(int num_threads)
{
    opj_thread_pool_t* tp;

    tp = (opj_thread_pool_t*) opj_calloc(1, sizeof(opj_thread_pool_t));
    if (!tp) {
        return ((void*)0);
    }
    tp->state = OPJWTS_OK;

    if (num_threads <= 0) {
        tp->tls = opj_tls_new();
        if (!tp->tls) {
            opj_free(tp);
            tp = ((void*)0);
        }
        return tp;
    }

    tp->mutex = opj_mutex_create();
    if (!tp->mutex) {
        opj_free(tp);
        return ((void*)0);
    }
    if (!opj_thread_pool_setup(tp, num_threads)) {
        opj_thread_pool_destroy(tp);
        return ((void*)0);
    }
    return tp;
}
