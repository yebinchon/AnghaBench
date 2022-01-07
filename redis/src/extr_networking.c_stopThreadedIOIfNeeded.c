
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_threads_num; int clients_pending_write; } ;


 scalar_t__ io_threads_active ;
 int listLength (int ) ;
 TYPE_1__ server ;
 int stopThreadedIO () ;

int stopThreadedIOIfNeeded(void) {
    int pending = listLength(server.clients_pending_write);


    if (server.io_threads_num == 1) return 1;

    if (pending < (server.io_threads_num*2)) {
        if (io_threads_active) stopThreadedIO();
        return 1;
    } else {
        return 0;
    }
}
