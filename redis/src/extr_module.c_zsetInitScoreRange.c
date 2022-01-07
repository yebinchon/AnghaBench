
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zskiplist ;
struct TYPE_14__ {int * zsl; } ;
typedef TYPE_2__ zset ;
struct TYPE_15__ {double min; double max; int minex; int maxex; } ;
typedef TYPE_3__ zrangespec ;
struct TYPE_16__ {int zer; int * zcurrent; TYPE_1__* value; TYPE_3__ zrs; int ztype; } ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ encoding; TYPE_2__* ptr; } ;
typedef TYPE_4__ RedisModuleKey ;


 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 scalar_t__ OBJ_ZSET ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int REDISMODULE_ZSET_RANGE_SCORE ;
 int RM_ZsetRangeStop (TYPE_4__*) ;
 int serverPanic (char*) ;
 int * zslFirstInRange (int *,TYPE_3__*) ;
 int * zslLastInRange (int *,TYPE_3__*) ;
 int * zzlFirstInRange (TYPE_2__*,TYPE_3__*) ;
 int * zzlLastInRange (TYPE_2__*,TYPE_3__*) ;

int zsetInitScoreRange(RedisModuleKey *key, double min, double max, int minex, int maxex, int first) {
    if (!key->value || key->value->type != OBJ_ZSET) return REDISMODULE_ERR;

    RM_ZsetRangeStop(key);
    key->ztype = REDISMODULE_ZSET_RANGE_SCORE;
    key->zer = 0;



    zrangespec *zrs = &key->zrs;
    zrs->min = min;
    zrs->max = max;
    zrs->minex = minex;
    zrs->maxex = maxex;

    if (key->value->encoding == OBJ_ENCODING_ZIPLIST) {
        key->zcurrent = first ? zzlFirstInRange(key->value->ptr,zrs) :
                                zzlLastInRange(key->value->ptr,zrs);
    } else if (key->value->encoding == OBJ_ENCODING_SKIPLIST) {
        zset *zs = key->value->ptr;
        zskiplist *zsl = zs->zsl;
        key->zcurrent = first ? zslFirstInRange(zsl,zrs) :
                                zslLastInRange(zsl,zrs);
    } else {
        serverPanic("Unsupported zset encoding");
    }
    if (key->zcurrent == ((void*)0)) key->zer = 1;
    return REDISMODULE_OK;
}
