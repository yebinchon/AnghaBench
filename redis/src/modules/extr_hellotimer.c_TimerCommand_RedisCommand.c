
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisModuleTimerID ;
typedef int RedisModuleString ;
typedef int RedisModuleCtx ;


 int REDISMODULE_NOT_USED (int) ;
 char* RedisModule_Alloc (int) ;
 int RedisModule_CreateTimer (int *,int,int ,char*) ;
 int RedisModule_ReplyWithSimpleString (int *,char*) ;
 int rand () ;
 int snprintf (char*,int,char*,int) ;
 int timerHandler ;

int TimerCommand_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    REDISMODULE_NOT_USED(argv);
    REDISMODULE_NOT_USED(argc);

    for (int j = 0; j < 10; j++) {
        int delay = rand() % 5000;
        char *buf = RedisModule_Alloc(256);
        snprintf(buf,256,"After %d", delay);
        RedisModuleTimerID tid = RedisModule_CreateTimer(ctx,delay,timerHandler,buf);
        REDISMODULE_NOT_USED(tid);
    }
    return RedisModule_ReplyWithSimpleString(ctx, "OK");
}
