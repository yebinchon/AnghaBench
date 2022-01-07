
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* path; struct TYPE_5__* next; } ;
typedef TYPE_1__ work_queue_t ;


 scalar_t__ TRUE ;
 scalar_t__ done_adding_files ;
 int files_ready ;
 int free (TYPE_1__*) ;
 int log_debug (char*,int) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_exit (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int search_file (TYPE_1__*) ;
 TYPE_1__* work_queue ;
 int work_queue_mtx ;
 int * work_queue_tail ;

void *search_file_worker(void *i) {
    work_queue_t *queue_item;
    int worker_id = *(int *)i;

    log_debug("Worker %i started", worker_id);
    while (TRUE) {
        pthread_mutex_lock(&work_queue_mtx);
        while (work_queue == ((void*)0)) {
            if (done_adding_files) {
                pthread_mutex_unlock(&work_queue_mtx);
                log_debug("Worker %i finished.", worker_id);
                pthread_exit(((void*)0));
            }
            pthread_cond_wait(&files_ready, &work_queue_mtx);
        }
        queue_item = work_queue;
        work_queue = work_queue->next;
        if (work_queue == ((void*)0)) {
            work_queue_tail = ((void*)0);
        }
        pthread_mutex_unlock(&work_queue_mtx);

        search_file(queue_item->path);
        free(queue_item->path);
        free(queue_item);
    }
}
