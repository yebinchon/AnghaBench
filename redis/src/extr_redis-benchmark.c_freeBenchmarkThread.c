
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ el; } ;
typedef TYPE_1__ benchmarkThread ;


 int aeDeleteEventLoop (scalar_t__) ;
 int zfree (TYPE_1__*) ;

__attribute__((used)) static void freeBenchmarkThread(benchmarkThread *thread) {
    if (thread->el) aeDeleteEventLoop(thread->el);
    zfree(thread);
}
