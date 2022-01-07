
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_7__ {int conn; int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_8__ {int io_threads_num; int clients_pending_write; } ;


 scalar_t__ AE_ERR ;
 int CLIENT_PENDING_WRITE ;
 int IO_THREADS_OP_WRITE ;
 scalar_t__ clientHasPendingReplies (TYPE_1__*) ;
 scalar_t__ connSetWriteHandler (int ,int ) ;
 int freeClientAsync (TYPE_1__*) ;
 int handleClientsWithPendingWrites () ;
 int io_threads_active ;
 int * io_threads_list ;
 int io_threads_op ;
 int* io_threads_pending ;
 int listAddNodeTail (int ,TYPE_1__*) ;
 int listEmpty (int ) ;
 int listLength (int ) ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int printf (char*,...) ;
 int sendReplyToClient ;
 TYPE_2__ server ;
 int startThreadedIO () ;
 scalar_t__ stopThreadedIOIfNeeded () ;
 scalar_t__ tio_debug ;

int handleClientsWithPendingWritesUsingThreads(void) {
    int processed = listLength(server.clients_pending_write);
    if (processed == 0) return 0;



    if (stopThreadedIOIfNeeded()) {
        return handleClientsWithPendingWrites();
    }


    if (!io_threads_active) startThreadedIO();

    if (tio_debug) printf("%d TOTAL WRITE pending clients\n", processed);


    listIter li;
    listNode *ln;
    listRewind(server.clients_pending_write,&li);
    int item_id = 0;
    while((ln = listNext(&li))) {
        client *c = listNodeValue(ln);
        c->flags &= ~CLIENT_PENDING_WRITE;
        int target_id = item_id % server.io_threads_num;
        listAddNodeTail(io_threads_list[target_id],c);
        item_id++;
    }



    io_threads_op = IO_THREADS_OP_WRITE;
    for (int j = 0; j < server.io_threads_num; j++) {
        int count = listLength(io_threads_list[j]);
        io_threads_pending[j] = count;
    }


    while(1) {
        unsigned long pending = 0;
        for (int j = 0; j < server.io_threads_num; j++)
            pending += io_threads_pending[j];
        if (pending == 0) break;
    }
    if (tio_debug) printf("I/O WRITE All threads finshed\n");



    listRewind(server.clients_pending_write,&li);
    while((ln = listNext(&li))) {
        client *c = listNodeValue(ln);



        if (clientHasPendingReplies(c) &&
                connSetWriteHandler(c->conn, sendReplyToClient) == AE_ERR)
        {
            freeClientAsync(c);
        }
    }
    listEmpty(server.clients_pending_write);
    return processed;
}
