
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_threads_num; int clients_pending_write; int clients_pending_read; } ;


 int fflush (int ) ;
 int handleClientsWithPendingReadsUsingThreads () ;
 int io_threads_active ;
 int * io_threads_mutex ;
 scalar_t__ listLength (int ) ;
 int printf (char*,...) ;
 int pthread_mutex_lock (int *) ;
 TYPE_1__ server ;
 int serverAssert (int) ;
 int stdout ;
 scalar_t__ tio_debug ;

void stopThreadedIO(void) {


    handleClientsWithPendingReadsUsingThreads();
    if (tio_debug) { printf("E"); fflush(stdout); }
    if (tio_debug) printf("--- STOPPING THREADED IO [R%d] [W%d] ---\n",
        (int) listLength(server.clients_pending_read),
        (int) listLength(server.clients_pending_write));
    serverAssert(io_threads_active == 1);
    for (int j = 0; j < server.io_threads_num; j++)
        pthread_mutex_lock(&io_threads_mutex[j]);
    io_threads_active = 0;
}
