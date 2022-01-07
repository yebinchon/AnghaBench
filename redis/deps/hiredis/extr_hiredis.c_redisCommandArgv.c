
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisContext ;


 scalar_t__ REDIS_OK ;
 void* __redisBlockForReply (int *) ;
 scalar_t__ redisAppendCommandArgv (int *,int,char const**,size_t const*) ;

void *redisCommandArgv(redisContext *c, int argc, const char **argv, const size_t *argvlen) {
    if (redisAppendCommandArgv(c,argc,argv,argvlen) != REDIS_OK)
        return ((void*)0);
    return __redisBlockForReply(c);
}
