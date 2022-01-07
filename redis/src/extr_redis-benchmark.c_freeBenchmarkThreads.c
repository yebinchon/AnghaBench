
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int benchmarkThread ;
struct TYPE_2__ {int num_threads; int ** threads; } ;


 TYPE_1__ config ;
 int freeBenchmarkThread (int *) ;
 int zfree (int **) ;

__attribute__((used)) static void freeBenchmarkThreads() {
    int i = 0;
    for (; i < config.num_threads; i++) {
        benchmarkThread *thread = config.threads[i];
        if (thread) freeBenchmarkThread(thread);
    }
    zfree(config.threads);
    config.threads = ((void*)0);
}
