
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void RedisModuleString ;
typedef int RedisModuleIO ;


 scalar_t__ RedisModule_IsIOError (int *) ;
 float RedisModule_LoadFloat (int *) ;
 long double RedisModule_LoadLongDouble (int *) ;
 int RedisModule_LoadSigned (int *) ;
 void* RedisModule_LoadString (int *) ;
 int assert (int) ;

void *testrdb_type_load(RedisModuleIO *rdb, int encver) {
    int count = RedisModule_LoadSigned(rdb);
    RedisModuleString *str = RedisModule_LoadString(rdb);
    float f = RedisModule_LoadFloat(rdb);
    long double ld = RedisModule_LoadLongDouble(rdb);
    if (RedisModule_IsIOError(rdb))
        return ((void*)0);

    assert(count==1);
    assert(encver==1);
    assert(f==1.5f);
    assert(ld==0.333333333333333333L);
    return str;
}
