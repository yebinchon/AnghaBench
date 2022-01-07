
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleIO ;


 int RedisModule_SaveFloat (int *,double) ;
 int RedisModule_SaveLongDouble (int *,long double) ;
 int RedisModule_SaveSigned (int *,int) ;
 int RedisModule_SaveString (int *,int *) ;

void testrdb_type_save(RedisModuleIO *rdb, void *value) {
    RedisModuleString *str = (RedisModuleString*)value;
    RedisModule_SaveSigned(rdb, 1);
    RedisModule_SaveString(rdb, str);
    RedisModule_SaveFloat(rdb, 1.5);
    RedisModule_SaveLongDouble(rdb, 0.333333333333333333L);
}
