
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; int el; } ;
typedef TYPE_1__ benchmarkThread ;


 int aeCreateEventLoop (int) ;
 int aeCreateTimeEvent (int ,int,int ,int *,int *) ;
 int showThroughput ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static benchmarkThread *createBenchmarkThread(int index) {
    benchmarkThread *thread = zmalloc(sizeof(*thread));
    if (thread == ((void*)0)) return ((void*)0);
    thread->index = index;
    thread->el = aeCreateEventLoop(1024*10);
    aeCreateTimeEvent(thread->el,1,showThroughput,((void*)0),((void*)0));
    return thread;
}
