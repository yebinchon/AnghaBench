
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {int mode; TYPE_3__* value; } ;
typedef int RedisModuleString ;
typedef TYPE_1__ RedisModuleKey ;


 scalar_t__ OBJ_LIST ;
 int QUICKLIST_HEAD ;
 int QUICKLIST_TAIL ;
 int REDISMODULE_ERR ;
 int REDISMODULE_KEYTYPE_LIST ;
 int REDISMODULE_LIST_HEAD ;
 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 int listTypePush (TYPE_3__*,int *,int ) ;
 int moduleCreateEmptyKey (TYPE_1__*,int ) ;

int RM_ListPush(RedisModuleKey *key, int where, RedisModuleString *ele) {
    if (!(key->mode & REDISMODULE_WRITE)) return REDISMODULE_ERR;
    if (key->value && key->value->type != OBJ_LIST) return REDISMODULE_ERR;
    if (key->value == ((void*)0)) moduleCreateEmptyKey(key,REDISMODULE_KEYTYPE_LIST);
    listTypePush(key->value, ele,
        (where == REDISMODULE_LIST_HEAD) ? QUICKLIST_HEAD : QUICKLIST_TAIL);
    return REDISMODULE_OK;
}
