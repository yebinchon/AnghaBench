
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_threads_num; } ;


 int fflush (int ) ;
 int io_threads_active ;
 int * io_threads_mutex ;
 int printf (char*) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ server ;
 int serverAssert (int) ;
 int stdout ;
 scalar_t__ tio_debug ;

void startThreadedIO(void) {
    if (tio_debug) { printf("S"); fflush(stdout); }
    if (tio_debug) printf("--- STARTING THREADED IO ---\n");
    serverAssert(io_threads_active == 0);
    for (int j = 0; j < server.io_threads_num; j++)
        pthread_mutex_unlock(&io_threads_mutex[j]);
    io_threads_active = 1;
}
