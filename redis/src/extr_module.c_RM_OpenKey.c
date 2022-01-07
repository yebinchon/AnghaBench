
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
struct TYPE_11__ {TYPE_1__* client; } ;
struct TYPE_10__ {int mode; int * iter; int * value; int * key; int db; TYPE_3__* ctx; } ;
struct TYPE_9__ {int db; } ;
typedef TYPE_2__ RedisModuleKey ;
typedef TYPE_3__ RedisModuleCtx ;


 int LOOKUP_NOTOUCH ;
 int REDISMODULE_AM_KEY ;
 int REDISMODULE_OPEN_KEY_NOTOUCH ;
 int REDISMODULE_WRITE ;
 int autoMemoryAdd (TYPE_3__*,int ,TYPE_2__*) ;
 int incrRefCount (int *) ;
 int * lookupKeyReadWithFlags (int ,int *,int) ;
 int * lookupKeyWriteWithFlags (int ,int *,int) ;
 TYPE_2__* zmalloc (int) ;
 int zsetKeyReset (TYPE_2__*) ;

void *RM_OpenKey(RedisModuleCtx *ctx, robj *keyname, int mode) {
    RedisModuleKey *kp;
    robj *value;
    int flags = mode & REDISMODULE_OPEN_KEY_NOTOUCH? LOOKUP_NOTOUCH: 0;

    if (mode & REDISMODULE_WRITE) {
        value = lookupKeyWriteWithFlags(ctx->client->db,keyname, flags);
    } else {
        value = lookupKeyReadWithFlags(ctx->client->db,keyname, flags);
        if (value == ((void*)0)) {
            return ((void*)0);
        }
    }


    kp = zmalloc(sizeof(*kp));
    kp->ctx = ctx;
    kp->db = ctx->client->db;
    kp->key = keyname;
    incrRefCount(keyname);
    kp->value = value;
    kp->iter = ((void*)0);
    kp->mode = mode;
    zsetKeyReset(kp);
    autoMemoryAdd(ctx,REDISMODULE_AM_KEY,kp);
    return (void*)kp;
}
