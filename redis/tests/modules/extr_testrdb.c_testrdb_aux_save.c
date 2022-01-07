
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleIO ;


 int REDISMODULE_AUX_AFTER_RDB ;
 int REDISMODULE_AUX_BEFORE_RDB ;
 int RedisModule_SaveSigned (int *,int) ;
 int RedisModule_SaveString (int *,scalar_t__) ;
 scalar_t__ after_str ;
 int assert (int) ;
 scalar_t__ before_str ;
 int conf_aux_count ;

void testrdb_aux_save(RedisModuleIO *rdb, int when) {
    if (conf_aux_count==1) assert(when == REDISMODULE_AUX_AFTER_RDB);
    if (conf_aux_count==0) assert(0);
    if (when == REDISMODULE_AUX_BEFORE_RDB) {
        if (before_str) {
            RedisModule_SaveSigned(rdb, 1);
            RedisModule_SaveString(rdb, before_str);
        } else {
            RedisModule_SaveSigned(rdb, 0);
        }
    } else {
        if (after_str) {
            RedisModule_SaveSigned(rdb, 1);
            RedisModule_SaveString(rdb, after_str);
        } else {
            RedisModule_SaveSigned(rdb, 0);
        }
    }
}
