
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aeEventLoop {int dummy; } ;


 int UNUSED (struct aeEventLoop*) ;
 int handleClientsWithPendingReadsUsingThreads () ;
 int moduleAcquireGIL () ;
 scalar_t__ moduleCount () ;

void afterSleep(struct aeEventLoop *eventLoop) {
    UNUSED(eventLoop);
    if (moduleCount()) moduleAcquireGIL();
    handleClientsWithPendingReadsUsingThreads();
}
