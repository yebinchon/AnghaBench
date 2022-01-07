
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int client ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int * lookupClientByID (int ) ;
 int modulePopulateClientInfoStructure (void*,int *,int ) ;

int RM_GetClientInfoById(void *ci, uint64_t id) {
    client *client = lookupClientByID(id);
    if (client == ((void*)0)) return REDISMODULE_ERR;
    if (ci == ((void*)0)) return REDISMODULE_OK;


    uint64_t structver = ((uint64_t*)ci)[0];
    return modulePopulateClientInfoStructure(ci,client,structver);
}
