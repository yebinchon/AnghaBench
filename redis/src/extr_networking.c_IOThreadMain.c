
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_4__ {int conn; } ;
typedef TYPE_1__ client ;


 scalar_t__ IO_THREADS_OP_READ ;
 scalar_t__ IO_THREADS_OP_WRITE ;
 int * io_threads_list ;
 int * io_threads_mutex ;
 scalar_t__ io_threads_op ;
 scalar_t__* io_threads_pending ;
 int listEmpty (int ) ;
 scalar_t__ listLength (int ) ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int printf (char*,long,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int readQueryFromClient (int ) ;
 int serverAssert (int) ;
 int serverPanic (char*) ;
 scalar_t__ tio_debug ;
 int writeToClient (TYPE_1__*,int ) ;

void *IOThreadMain(void *myid) {


    long id = (unsigned long)myid;

    while(1) {

        for (int j = 0; j < 1000000; j++) {
            if (io_threads_pending[id] != 0) break;
        }


        if (io_threads_pending[id] == 0) {
            pthread_mutex_lock(&io_threads_mutex[id]);
            pthread_mutex_unlock(&io_threads_mutex[id]);
            continue;
        }

        serverAssert(io_threads_pending[id] != 0);

        if (tio_debug) printf("[%ld] %d to handle\n", id, (int)listLength(io_threads_list[id]));



        listIter li;
        listNode *ln;
        listRewind(io_threads_list[id],&li);
        while((ln = listNext(&li))) {
            client *c = listNodeValue(ln);
            if (io_threads_op == IO_THREADS_OP_WRITE) {
                writeToClient(c,0);
            } else if (io_threads_op == IO_THREADS_OP_READ) {
                readQueryFromClient(c->conn);
            } else {
                serverPanic("io_threads_op value is unknown");
            }
        }
        listEmpty(io_threads_list[id]);
        io_threads_pending[id] = 0;

        if (tio_debug) printf("[%ld] Done\n", id);
    }
}
