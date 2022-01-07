
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int client ;
struct TYPE_2__ {char* title; scalar_t__ num_threads; void* start; scalar_t__ threads; void* totlatency; int el; scalar_t__ requests_finished; scalar_t__ requests_issued; } ;


 int aeMain (int ) ;
 TYPE_1__ config ;
 int createClient (char*,int,int *,int) ;
 int createMissingClients (int ) ;
 int freeAllClients () ;
 int freeBenchmarkThreads () ;
 int initBenchmarkThreads () ;
 void* mstime () ;
 int showLatencyReport () ;
 int startBenchmarkThreads () ;

__attribute__((used)) static void benchmark(char *title, char *cmd, int len) {
    client c;

    config.title = title;
    config.requests_issued = 0;
    config.requests_finished = 0;

    if (config.num_threads) initBenchmarkThreads();

    int thread_id = config.num_threads > 0 ? 0 : -1;
    c = createClient(cmd,len,((void*)0),thread_id);
    createMissingClients(c);

    config.start = mstime();
    if (!config.num_threads) aeMain(config.el);
    else startBenchmarkThreads();
    config.totlatency = mstime()-config.start;

    showLatencyReport();
    freeAllClients();
    if (config.threads) freeBenchmarkThreads();
}
