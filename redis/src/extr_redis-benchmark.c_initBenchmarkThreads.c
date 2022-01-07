
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int benchmarkThread ;
struct TYPE_2__ {int num_threads; int ** threads; } ;


 TYPE_1__ config ;
 int * createBenchmarkThread (int) ;
 int freeBenchmarkThreads () ;
 int ** zmalloc (int) ;

__attribute__((used)) static void initBenchmarkThreads() {
    int i;
    if (config.threads) freeBenchmarkThreads();
    config.threads = zmalloc(config.num_threads * sizeof(benchmarkThread*));
    for (i = 0; i < config.num_threads; i++) {
        benchmarkThread *thread = createBenchmarkThread(i);
        config.threads[i] = thread;
    }
}
