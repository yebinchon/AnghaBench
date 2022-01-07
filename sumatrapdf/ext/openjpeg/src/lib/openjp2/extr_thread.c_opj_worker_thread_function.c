
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * tp; } ;
typedef TYPE_1__ opj_worker_thread_t ;
struct TYPE_7__ {int user_data; int (* job_fn ) (int ,int *) ;} ;
typedef TYPE_2__ opj_worker_thread_job_t ;
typedef int opj_tls_t ;
typedef int opj_thread_pool_t ;
typedef scalar_t__ OPJ_BOOL ;


 scalar_t__ OPJ_FALSE ;
 scalar_t__ OPJ_TRUE ;
 int opj_free (TYPE_2__*) ;
 TYPE_2__* opj_thread_pool_get_next_job (int *,TYPE_1__*,scalar_t__) ;
 int opj_tls_destroy (int *) ;
 int * opj_tls_new () ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void opj_worker_thread_function(void* user_data)
{
    opj_worker_thread_t* worker_thread;
    opj_thread_pool_t* tp;
    opj_tls_t* tls;
    OPJ_BOOL job_finished = OPJ_FALSE;

    worker_thread = (opj_worker_thread_t*) user_data;
    tp = worker_thread->tp;
    tls = opj_tls_new();

    while (OPJ_TRUE) {
        opj_worker_thread_job_t* job = opj_thread_pool_get_next_job(tp, worker_thread,
                                       job_finished);
        if (job == ((void*)0)) {
            break;
        }

        if (job->job_fn) {
            job->job_fn(job->user_data, tls);
        }
        opj_free(job);
        job_finished = OPJ_TRUE;
    }

    opj_tls_destroy(tls);
}
