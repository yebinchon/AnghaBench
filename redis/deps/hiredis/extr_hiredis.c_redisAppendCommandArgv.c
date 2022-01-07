
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;
typedef int redisContext ;


 int REDIS_ERR ;
 int REDIS_ERR_OOM ;
 scalar_t__ REDIS_OK ;
 scalar_t__ __redisAppendCommand (int *,int ,int) ;
 int __redisSetError (int *,int ,char*) ;
 int redisFormatSdsCommandArgv (int *,int,char const**,size_t const*) ;
 int sdsfree (int ) ;

int redisAppendCommandArgv(redisContext *c, int argc, const char **argv, const size_t *argvlen) {
    sds cmd;
    int len;

    len = redisFormatSdsCommandArgv(&cmd,argc,argv,argvlen);
    if (len == -1) {
        __redisSetError(c,REDIS_ERR_OOM,"Out of memory");
        return REDIS_ERR;
    }

    if (__redisAppendCommand(c,cmd,len) != REDIS_OK) {
        sdsfree(cmd);
        return REDIS_ERR;
    }

    sdsfree(cmd);
    return REDIS_OK;
}
