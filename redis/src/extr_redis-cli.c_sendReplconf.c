
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; char* str; } ;
typedef TYPE_1__ redisReply ;


 scalar_t__ REDIS_REPLY_ERROR ;
 int context ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int freeReplyObject (TYPE_1__*) ;
 int printf (char*,char const*,char const*) ;
 TYPE_1__* redisCommand (int ,char*,char const*,char const*) ;
 int stderr ;

void sendReplconf(const char* arg1, const char* arg2) {
    printf("sending REPLCONF %s %s\n", arg1, arg2);
    redisReply *reply = redisCommand(context, "REPLCONF %s %s", arg1, arg2);


    if(reply == ((void*)0)) {
        fprintf(stderr, "\nI/O error\n");
        exit(1);
    } else if(reply->type == REDIS_REPLY_ERROR) {
        fprintf(stderr, "REPLCONF %s error: %s\n", arg1, reply->str);

    }
    freeReplyObject(reply);
}
