
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_2__ {int io_threads_num; } ;


 int IOThreadMain ;
 int IO_THREADS_MAX_NUM ;
 int LL_WARNING ;
 int exit (int) ;
 int * io_threads ;
 scalar_t__ io_threads_active ;
 int * io_threads_list ;
 int * io_threads_mutex ;
 scalar_t__* io_threads_pending ;
 int listCreate () ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,...) ;

void initThreadedIO(void) {
    io_threads_active = 0;



    if (server.io_threads_num == 1) return;

    if (server.io_threads_num > IO_THREADS_MAX_NUM) {
        serverLog(LL_WARNING,"Fatal: too many I/O threads configured. "
                             "The maximum number is %d.", IO_THREADS_MAX_NUM);
        exit(1);
    }


    for (int i = 0; i < server.io_threads_num; i++) {
        pthread_t tid;
        pthread_mutex_init(&io_threads_mutex[i],((void*)0));
        io_threads_pending[i] = 0;
        io_threads_list[i] = listCreate();
        pthread_mutex_lock(&io_threads_mutex[i]);
        if (pthread_create(&tid,((void*)0),IOThreadMain,(void*)(long)i) != 0) {
            serverLog(LL_WARNING,"Fatal: Can't initialize IO thread.");
            exit(1);
        }
        io_threads[i] = tid;
    }
}
