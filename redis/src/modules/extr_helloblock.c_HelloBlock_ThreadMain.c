
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleBlockedClient ;


 int* RedisModule_Alloc (int) ;
 int RedisModule_Free (void**) ;
 int RedisModule_UnblockClient (int *,int*) ;
 int rand () ;
 int sleep (long long) ;

void *HelloBlock_ThreadMain(void *arg) {
    void **targ = arg;
    RedisModuleBlockedClient *bc = targ[0];
    long long delay = (unsigned long)targ[1];
    RedisModule_Free(targ);

    sleep(delay);
    int *r = RedisModule_Alloc(sizeof(int));
    *r = rand();
    RedisModule_UnblockClient(bc,r);
    return ((void*)0);
}
