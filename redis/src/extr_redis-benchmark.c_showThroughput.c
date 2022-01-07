
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void aeEventLoop ;
struct TYPE_2__ {int liveclients; int requests_finished; int requests; int idlemode; char* title; scalar_t__ start; scalar_t__ csv; scalar_t__ num_threads; } ;


 int AE_NOMORE ;
 int UNUSED (void*) ;
 int aeStop (void*) ;
 int atomicGet (int,int) ;
 TYPE_1__ config ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ mstime () ;
 int printf (char*,...) ;
 int stderr ;
 int stdout ;

int showThroughput(struct aeEventLoop *eventLoop, long long id, void *clientData) {
    UNUSED(eventLoop);
    UNUSED(id);
    UNUSED(clientData);
    int liveclients = 0;
    int requests_finished = 0;
    atomicGet(config.liveclients, liveclients);
    atomicGet(config.requests_finished, requests_finished);

    if (liveclients == 0 && requests_finished != config.requests) {
        fprintf(stderr,"All clients disconnected... aborting.\n");
        exit(1);
    }
    if (config.num_threads && requests_finished >= config.requests) {
        aeStop(eventLoop);
        return AE_NOMORE;
    }
    if (config.csv) return 250;
    if (config.idlemode == 1) {
        printf("clients: %d\r", config.liveclients);
        fflush(stdout);
 return 250;
    }
    float dt = (float)(mstime()-config.start)/1000.0;
    float rps = (float)requests_finished/dt;
    printf("%s: %.2f\r", config.title, rps);
    fflush(stdout);
    return 250;
}
