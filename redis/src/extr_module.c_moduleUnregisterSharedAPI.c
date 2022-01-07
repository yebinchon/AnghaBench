
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_6__ {int sharedapi; } ;
struct TYPE_5__ {int * module; } ;
typedef TYPE_1__ RedisModuleSharedAPI ;
typedef int RedisModule ;


 int dictDelete (int ,char const*) ;
 char* dictGetKey (int *) ;
 int * dictGetSafeIterator (int ) ;
 TYPE_1__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_3__ server ;
 int zfree (TYPE_1__*) ;

int moduleUnregisterSharedAPI(RedisModule *module) {
    int count = 0;
    dictIterator *di = dictGetSafeIterator(server.sharedapi);
    dictEntry *de;
    while ((de = dictNext(di)) != ((void*)0)) {
        const char *apiname = dictGetKey(de);
        RedisModuleSharedAPI *sapi = dictGetVal(de);
        if (sapi->module == module) {
            dictDelete(server.sharedapi,apiname);
            zfree(sapi);
            count++;
        }
    }
    dictReleaseIterator(di);
    return count;
}
