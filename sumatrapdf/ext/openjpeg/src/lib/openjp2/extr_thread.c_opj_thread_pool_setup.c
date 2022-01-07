
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * thread; int marked_as_waiting; int * mutex; int * cond; TYPE_2__* tp; } ;
typedef TYPE_1__ opj_worker_thread_t ;
struct TYPE_6__ {int worker_threads_count; int waiting_worker_thread_count; scalar_t__ state; int mutex; int * cond; TYPE_1__* worker_threads; } ;
typedef TYPE_2__ opj_thread_pool_t ;
typedef int OPJ_BOOL ;


 scalar_t__ OPJWTS_ERROR ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int assert (int) ;
 scalar_t__ opj_calloc (size_t,int) ;
 void* opj_cond_create () ;
 int opj_cond_wait (int *,int ) ;
 int * opj_mutex_create () ;
 int opj_mutex_destroy (int *) ;
 int opj_mutex_lock (int ) ;
 int opj_mutex_unlock (int ) ;
 int * opj_thread_create (int ,TYPE_1__*) ;
 int opj_worker_thread_function ;

__attribute__((used)) static OPJ_BOOL opj_thread_pool_setup(opj_thread_pool_t* tp, int num_threads)
{
    int i;
    OPJ_BOOL bRet = OPJ_TRUE;

    assert(num_threads > 0);

    tp->cond = opj_cond_create();
    if (tp->cond == ((void*)0)) {
        return OPJ_FALSE;
    }

    tp->worker_threads = (opj_worker_thread_t*) opj_calloc((size_t)num_threads,
                         sizeof(opj_worker_thread_t));
    if (tp->worker_threads == ((void*)0)) {
        return OPJ_FALSE;
    }
    tp->worker_threads_count = num_threads;

    for (i = 0; i < num_threads; i++) {
        tp->worker_threads[i].tp = tp;

        tp->worker_threads[i].mutex = opj_mutex_create();
        if (tp->worker_threads[i].mutex == ((void*)0)) {
            tp->worker_threads_count = i;
            bRet = OPJ_FALSE;
            break;
        }

        tp->worker_threads[i].cond = opj_cond_create();
        if (tp->worker_threads[i].cond == ((void*)0)) {
            opj_mutex_destroy(tp->worker_threads[i].mutex);
            tp->worker_threads_count = i;
            bRet = OPJ_FALSE;
            break;
        }

        tp->worker_threads[i].marked_as_waiting = OPJ_FALSE;

        tp->worker_threads[i].thread = opj_thread_create(opj_worker_thread_function,
                                       &(tp->worker_threads[i]));
        if (tp->worker_threads[i].thread == ((void*)0)) {
            tp->worker_threads_count = i;
            bRet = OPJ_FALSE;
            break;
        }
    }



    opj_mutex_lock(tp->mutex);
    while (tp->waiting_worker_thread_count < num_threads) {
        opj_cond_wait(tp->cond, tp->mutex);
    }
    opj_mutex_unlock(tp->mutex);


    if (tp->state == OPJWTS_ERROR) {
        bRet = OPJ_FALSE;
    }

    return bRet;
}
