
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int redisContext ;


 int REDIS_ERR ;
 int REDIS_ERR_OOM ;
 int REDIS_ERR_OTHER ;
 scalar_t__ REDIS_OK ;
 scalar_t__ __redisAppendCommand (int *,char*,int) ;
 int __redisSetError (int *,int ,char*) ;
 int free (char*) ;
 int redisvFormatCommand (char**,char const*,int ) ;

int redisvAppendCommand(redisContext *c, const char *format, va_list ap) {
    char *cmd;
    int len;

    len = redisvFormatCommand(&cmd,format,ap);
    if (len == -1) {
        __redisSetError(c,REDIS_ERR_OOM,"Out of memory");
        return REDIS_ERR;
    } else if (len == -2) {
        __redisSetError(c,REDIS_ERR_OTHER,"Invalid format string");
        return REDIS_ERR;
    }

    if (__redisAppendCommand(c,cmd,len) != REDIS_OK) {
        free(cmd);
        return REDIS_ERR;
    }

    free(cmd);
    return REDIS_OK;
}
