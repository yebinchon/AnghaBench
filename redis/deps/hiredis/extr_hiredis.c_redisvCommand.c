
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int redisContext ;


 scalar_t__ REDIS_OK ;
 void* __redisBlockForReply (int *) ;
 scalar_t__ redisvAppendCommand (int *,char const*,int ) ;

void *redisvCommand(redisContext *c, const char *format, va_list ap) {
    if (redisvAppendCommand(c,format,ap) != REDIS_OK)
        return ((void*)0);
    return __redisBlockForReply(c);
}
