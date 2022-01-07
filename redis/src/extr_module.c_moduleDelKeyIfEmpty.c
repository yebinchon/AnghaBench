
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef TYPE_1__ robj ;
struct TYPE_9__ {int mode; TYPE_1__* value; int key; int db; } ;
typedef TYPE_2__ RedisModuleKey ;






 int REDISMODULE_WRITE ;
 int dbDelete (int ,int ) ;
 int hashTypeLength (TYPE_1__*) ;
 int listTypeLength (TYPE_1__*) ;
 int setTypeSize (TYPE_1__*) ;
 int zsetLength (TYPE_1__*) ;

int moduleDelKeyIfEmpty(RedisModuleKey *key) {
    if (!(key->mode & REDISMODULE_WRITE) || key->value == ((void*)0)) return 0;
    int isempty;
    robj *o = key->value;

    switch(o->type) {
    case 130: isempty = listTypeLength(o) == 0; break;
    case 129: isempty = setTypeSize(o) == 0; break;
    case 128: isempty = zsetLength(o) == 0; break;
    case 131 : isempty = hashTypeLength(o) == 0; break;
    default: isempty = 0;
    }

    if (isempty) {
        dbDelete(key->db,key->key);
        key->value = ((void*)0);
        return 1;
    } else {
        return 0;
    }
}
