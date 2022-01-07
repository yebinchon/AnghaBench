
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_11__ {int list_compress_depth; int list_max_ziplist_size; } ;
struct TYPE_10__ {int mode; TYPE_1__* value; int key; int db; } ;
typedef TYPE_2__ RedisModuleKey ;


 int REDISMODULE_ERR ;



 int REDISMODULE_OK ;
 int REDISMODULE_WRITE ;
 TYPE_1__* createHashObject () ;
 TYPE_1__* createQuicklistObject () ;
 TYPE_1__* createZsetZiplistObject () ;
 int dbAdd (int ,int ,TYPE_1__*) ;
 int quicklistSetOptions (int ,int ,int ) ;
 TYPE_3__ server ;

int moduleCreateEmptyKey(RedisModuleKey *key, int type) {
    robj *obj;


    if (!(key->mode & REDISMODULE_WRITE) || key->value)
        return REDISMODULE_ERR;

    switch(type) {
    case 129:
        obj = createQuicklistObject();
        quicklistSetOptions(obj->ptr, server.list_max_ziplist_size,
                            server.list_compress_depth);
        break;
    case 128:
        obj = createZsetZiplistObject();
        break;
    case 130:
        obj = createHashObject();
        break;
    default: return REDISMODULE_ERR;
    }
    dbAdd(key->db,key->key,obj);
    key->value = obj;
    return REDISMODULE_OK;
}
