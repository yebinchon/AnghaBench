
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* value; } ;
typedef TYPE_2__ moduleValue ;
struct TYPE_8__ {TYPE_1__* value; } ;
struct TYPE_6__ {TYPE_2__* ptr; } ;
typedef TYPE_3__ RedisModuleKey ;


 scalar_t__ REDISMODULE_KEYTYPE_MODULE ;
 scalar_t__ RM_KeyType (TYPE_3__*) ;

void *RM_ModuleTypeGetValue(RedisModuleKey *key) {
    if (key == ((void*)0) ||
        key->value == ((void*)0) ||
        RM_KeyType(key) != REDISMODULE_KEYTYPE_MODULE) return ((void*)0);
    moduleValue *mv = key->value->ptr;
    return mv->value;
}
