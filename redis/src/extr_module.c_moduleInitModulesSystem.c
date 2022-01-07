
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * user; int flags; } ;
struct TYPE_4__ {int * module_blocked_pipe; void* loadmodule_queue; } ;


 int CLIENT_MODULE ;
 int LL_WARNING ;
 void* RedisModule_EventListeners ;
 int Timers ;
 int anetNonBlock (int *,int ) ;
 TYPE_2__* createClient (int *) ;
 int dictCreate (int *,int *) ;
 int errno ;
 int exit (int) ;
 void* listCreate () ;
 void* moduleCommandFilters ;
 TYPE_2__* moduleFreeContextReusedClient ;
 int moduleGIL ;
 void* moduleKeyspaceSubscribers ;
 int moduleRegisterCoreAPI () ;
 void* moduleUnblockedClients ;
 int modules ;
 int modulesDictType ;
 int pipe (int *) ;
 int pthread_mutex_lock (int *) ;
 int raxNew () ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int ) ;
 int strerror (int ) ;

void moduleInitModulesSystem(void) {
    moduleUnblockedClients = listCreate();
    server.loadmodule_queue = listCreate();
    modules = dictCreate(&modulesDictType,((void*)0));


    moduleKeyspaceSubscribers = listCreate();
    moduleFreeContextReusedClient = createClient(((void*)0));
    moduleFreeContextReusedClient->flags |= CLIENT_MODULE;
    moduleFreeContextReusedClient->user = ((void*)0);


    moduleCommandFilters = listCreate();

    moduleRegisterCoreAPI();
    if (pipe(server.module_blocked_pipe) == -1) {
        serverLog(LL_WARNING,
            "Can't create the pipe for module blocking commands: %s",
            strerror(errno));
        exit(1);
    }


    anetNonBlock(((void*)0),server.module_blocked_pipe[0]);
    anetNonBlock(((void*)0),server.module_blocked_pipe[1]);


    Timers = raxNew();


    RedisModule_EventListeners = listCreate();



    pthread_mutex_lock(&moduleGIL);
}
