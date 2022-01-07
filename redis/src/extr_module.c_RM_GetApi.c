
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dictEntry ;
struct TYPE_2__ {int moduleapi; } ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int * dictFind (int ,char const*) ;
 void* dictGetVal (int *) ;
 TYPE_1__ server ;

int RM_GetApi(const char *funcname, void **targetPtrPtr) {
    dictEntry *he = dictFind(server.moduleapi, funcname);
    if (!he) return REDISMODULE_ERR;
    *targetPtrPtr = dictGetVal(he);
    return REDISMODULE_OK;
}
