
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; scalar_t__ encoding; char* ptr; } ;
struct TYPE_5__ {TYPE_2__* value; int key; int db; } ;
typedef TYPE_1__ RedisModuleKey ;


 scalar_t__ OBJ_ENCODING_RAW ;
 scalar_t__ OBJ_STRING ;
 int REDISMODULE_WRITE ;
 TYPE_2__* dbUnshareStringValue (int ,int ,TYPE_2__*) ;
 size_t sdslen (char*) ;

char *RM_StringDMA(RedisModuleKey *key, size_t *len, int mode) {




    char *emptystring = "<dma-empty-string>";
    if (key->value == ((void*)0)) {
        *len = 0;
        return emptystring;
    }

    if (key->value->type != OBJ_STRING) return ((void*)0);



    if ((mode & REDISMODULE_WRITE) || key->value->encoding != OBJ_ENCODING_RAW)
        key->value = dbUnshareStringValue(key->db, key->key, key->value);

    *len = sdslen(key->value->ptr);
    return key->value->ptr;
}
