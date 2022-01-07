
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zskiplist ;
struct TYPE_9__ {int * zsl; } ;
typedef TYPE_2__ zset ;
typedef int zlexrangespec ;
struct TYPE_10__ {int zer; int * zcurrent; TYPE_1__* value; int ztype; int zlrs; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ encoding; TYPE_2__* ptr; } ;
typedef int RedisModuleString ;
typedef TYPE_3__ RedisModuleKey ;


 scalar_t__ C_ERR ;
 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 scalar_t__ OBJ_ZSET ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int REDISMODULE_ZSET_RANGE_LEX ;
 int RM_ZsetRangeStop (TYPE_3__*) ;
 int serverPanic (char*) ;
 int * zslFirstInLexRange (int *,int *) ;
 int * zslLastInLexRange (int *,int *) ;
 scalar_t__ zslParseLexRange (int *,int *,int *) ;
 int * zzlFirstInLexRange (TYPE_2__*,int *) ;
 int * zzlLastInLexRange (TYPE_2__*,int *) ;

int zsetInitLexRange(RedisModuleKey *key, RedisModuleString *min, RedisModuleString *max, int first) {
    if (!key->value || key->value->type != OBJ_ZSET) return REDISMODULE_ERR;

    RM_ZsetRangeStop(key);
    key->zer = 0;



    zlexrangespec *zlrs = &key->zlrs;
    if (zslParseLexRange(min, max, zlrs) == C_ERR) return REDISMODULE_ERR;



    key->ztype = REDISMODULE_ZSET_RANGE_LEX;

    if (key->value->encoding == OBJ_ENCODING_ZIPLIST) {
        key->zcurrent = first ? zzlFirstInLexRange(key->value->ptr,zlrs) :
                                zzlLastInLexRange(key->value->ptr,zlrs);
    } else if (key->value->encoding == OBJ_ENCODING_SKIPLIST) {
        zset *zs = key->value->ptr;
        zskiplist *zsl = zs->zsl;
        key->zcurrent = first ? zslFirstInLexRange(zsl,zlrs) :
                                zslLastInLexRange(zsl,zlrs);
    } else {
        serverPanic("Unsupported zset encoding");
    }
    if (key->zcurrent == ((void*)0)) key->zer = 1;

    return REDISMODULE_OK;
}
