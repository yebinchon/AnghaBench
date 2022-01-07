
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int mode; TYPE_3__* value; } ;
struct TYPE_7__ {int ptr; } ;
typedef TYPE_1__ RedisModuleString ;
typedef TYPE_2__ RedisModuleKey ;


 scalar_t__ OBJ_ZSET ;
 int REDISMODULE_ERR ;
 int REDISMODULE_KEYTYPE_ZSET ;
 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 int RM_ZsetAddFlagsFromCoreFlags (int) ;
 int RM_ZsetAddFlagsToCoreFlags (int) ;
 int moduleCreateEmptyKey (TYPE_2__*,int ) ;
 scalar_t__ zsetAdd (TYPE_3__*,double,int ,int*,int *) ;

int RM_ZsetAdd(RedisModuleKey *key, double score, RedisModuleString *ele, int *flagsptr) {
    int flags = 0;
    if (!(key->mode & REDISMODULE_WRITE)) return REDISMODULE_ERR;
    if (key->value && key->value->type != OBJ_ZSET) return REDISMODULE_ERR;
    if (key->value == ((void*)0)) moduleCreateEmptyKey(key,REDISMODULE_KEYTYPE_ZSET);
    if (flagsptr) flags = RM_ZsetAddFlagsToCoreFlags(*flagsptr);
    if (zsetAdd(key->value,score,ele->ptr,&flags,((void*)0)) == 0) {
        if (flagsptr) *flagsptr = 0;
        return REDISMODULE_ERR;
    }
    if (flagsptr) *flagsptr = RM_ZsetAddFlagsFromCoreFlags(flags);
    return REDISMODULE_OK;
}
