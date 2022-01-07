
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; char* str; TYPE_2__** element; } ;
typedef TYPE_3__ redisReply ;
struct TYPE_10__ {scalar_t__ pattern; } ;
struct TYPE_8__ {unsigned int elements; TYPE_1__** element; int str; } ;
struct TYPE_7__ {char* str; } ;


 scalar_t__ REDIS_REPLY_ERROR ;
 TYPE_6__ config ;
 int context ;
 int exit (int) ;
 int freeReplyObject (TYPE_3__*) ;
 int printf (char*,...) ;
 TYPE_3__* redisCommand (int ,char*,unsigned long long,...) ;
 unsigned long long strtoull (int ,int *,int) ;

__attribute__((used)) static void scanMode(void) {
    redisReply *reply;
    unsigned long long cur = 0;

    do {
        if (config.pattern)
            reply = redisCommand(context,"SCAN %llu MATCH %s",
                cur,config.pattern);
        else
            reply = redisCommand(context,"SCAN %llu",cur);
        if (reply == ((void*)0)) {
            printf("I/O error\n");
            exit(1);
        } else if (reply->type == REDIS_REPLY_ERROR) {
            printf("ERROR: %s\n", reply->str);
            exit(1);
        } else {
            unsigned int j;

            cur = strtoull(reply->element[0]->str,((void*)0),10);
            for (j = 0; j < reply->element[1]->elements; j++)
                printf("%s\n", reply->element[1]->element[j]->str);
        }
        freeReplyObject(reply);
    } while(cur != 0);

    exit(0);
}
