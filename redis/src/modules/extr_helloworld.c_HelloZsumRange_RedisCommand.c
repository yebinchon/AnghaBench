
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleString ;
typedef int RedisModuleKey ;
typedef int RedisModuleCtx ;


 char* REDISMODULE_ERRORMSG_WRONGTYPE ;
 scalar_t__ REDISMODULE_KEYTYPE_ZSET ;
 scalar_t__ REDISMODULE_OK ;
 int REDISMODULE_READ ;
 int REDISMODULE_WRITE ;
 int RedisModule_CloseKey (int *) ;
 int RedisModule_FreeString (int *,int *) ;
 scalar_t__ RedisModule_KeyType (int *) ;
 int * RedisModule_OpenKey (int *,int *,int) ;
 int RedisModule_ReplyWithArray (int *,int) ;
 int RedisModule_ReplyWithDouble (int *,double) ;
 int RedisModule_ReplyWithError (int *,char*) ;
 scalar_t__ RedisModule_StringToDouble (int *,double*) ;
 int RedisModule_WrongArity (int *) ;
 int RedisModule_ZsetFirstInScoreRange (int *,double,double,int ,int ) ;
 int RedisModule_ZsetLastInScoreRange (int *,double,double,int ,int ) ;
 int * RedisModule_ZsetRangeCurrentElement (int *,double*) ;
 int RedisModule_ZsetRangeEndReached (int *) ;
 int RedisModule_ZsetRangeNext (int *) ;
 int RedisModule_ZsetRangePrev (int *) ;
 int RedisModule_ZsetRangeStop (int *) ;

int HelloZsumRange_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    double score_start, score_end;
    if (argc != 4) return RedisModule_WrongArity(ctx);

    if (RedisModule_StringToDouble(argv[2],&score_start) != REDISMODULE_OK ||
        RedisModule_StringToDouble(argv[3],&score_end) != REDISMODULE_OK)
    {
        return RedisModule_ReplyWithError(ctx,"ERR invalid range");
    }

    RedisModuleKey *key = RedisModule_OpenKey(ctx,argv[1],
        REDISMODULE_READ|REDISMODULE_WRITE);
    if (RedisModule_KeyType(key) != REDISMODULE_KEYTYPE_ZSET) {
        return RedisModule_ReplyWithError(ctx,REDISMODULE_ERRORMSG_WRONGTYPE);
    }

    double scoresum_a = 0;
    double scoresum_b = 0;

    RedisModule_ZsetFirstInScoreRange(key,score_start,score_end,0,0);
    while(!RedisModule_ZsetRangeEndReached(key)) {
        double score;
        RedisModuleString *ele = RedisModule_ZsetRangeCurrentElement(key,&score);
        RedisModule_FreeString(ctx,ele);
        scoresum_a += score;
        RedisModule_ZsetRangeNext(key);
    }
    RedisModule_ZsetRangeStop(key);

    RedisModule_ZsetLastInScoreRange(key,score_start,score_end,0,0);
    while(!RedisModule_ZsetRangeEndReached(key)) {
        double score;
        RedisModuleString *ele = RedisModule_ZsetRangeCurrentElement(key,&score);
        RedisModule_FreeString(ctx,ele);
        scoresum_b += score;
        RedisModule_ZsetRangePrev(key);
    }

    RedisModule_ZsetRangeStop(key);

    RedisModule_CloseKey(key);

    RedisModule_ReplyWithArray(ctx,2);
    RedisModule_ReplyWithDouble(ctx,scoresum_a);
    RedisModule_ReplyWithDouble(ctx,scoresum_b);
    return REDISMODULE_OK;
}
