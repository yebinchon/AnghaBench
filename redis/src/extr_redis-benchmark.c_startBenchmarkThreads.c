
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int thread; } ;
typedef TYPE_1__ benchmarkThread ;
struct TYPE_5__ {int num_threads; TYPE_1__** threads; } ;


 TYPE_3__ config ;
 int execBenchmarkThread ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_1__*) ;
 int pthread_join (int ,int *) ;
 int stderr ;

__attribute__((used)) static void startBenchmarkThreads() {
    int i;
    for (i = 0; i < config.num_threads; i++) {
        benchmarkThread *t = config.threads[i];
        if (pthread_create(&(t->thread), ((void*)0), execBenchmarkThread, t)){
            fprintf(stderr, "FATAL: Failed to start thread %d.\n", i);
            exit(1);
        }
    }
    for (i = 0; i < config.num_threads; i++)
        pthread_join(config.threads[i]->thread, ((void*)0));
}
