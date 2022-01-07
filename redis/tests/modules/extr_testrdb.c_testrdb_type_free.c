
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;


 int RedisModule_FreeString (int *,int *) ;

void testrdb_type_free(void *value) {
    if (value)
        RedisModule_FreeString(((void*)0), (RedisModuleString*)value);
}
