
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisReply ;
typedef int redisContext ;


 int assert (int ) ;
 int freeReplyObject (int *) ;
 int * redisCommand (int *,char*) ;
 int redisFree (int *) ;
 int redisFreeKeepFd (int *) ;

__attribute__((used)) static int disconnect(redisContext *c, int keep_fd) {
    redisReply *reply;


    reply = redisCommand(c,"SELECT 9");
    assert(reply != ((void*)0));
    freeReplyObject(reply);
    reply = redisCommand(c,"FLUSHDB");
    assert(reply != ((void*)0));
    freeReplyObject(reply);


    if (keep_fd)
        return redisFreeKeepFd(c);
    redisFree(c);
    return -1;
}
