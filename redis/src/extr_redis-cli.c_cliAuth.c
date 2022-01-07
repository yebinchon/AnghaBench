
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_6__ {int * auth; int * user; } ;


 int REDIS_ERR ;
 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_ERROR ;
 TYPE_4__ config ;
 int context ;
 int fprintf (int ,char*) ;
 int freeReplyObject (TYPE_1__*) ;
 TYPE_1__* redisCommand (int ,char*,int *,...) ;
 int stderr ;

__attribute__((used)) static int cliAuth(void) {
    redisReply *reply;
    if (config.auth == ((void*)0)) return REDIS_OK;

    if (config.user == ((void*)0))
        reply = redisCommand(context,"AUTH %s",config.auth);
    else
        reply = redisCommand(context,"AUTH %s %s",config.user,config.auth);
    if (reply != ((void*)0)) {
        if (reply->type == REDIS_REPLY_ERROR)
            fprintf(stderr,"Warning: AUTH failed\n");
        freeReplyObject(reply);
        return REDIS_OK;
    }
    return REDIS_ERR;
}
