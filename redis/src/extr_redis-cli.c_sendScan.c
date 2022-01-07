
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; char* str; int elements; TYPE_1__** element; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_5__ {scalar_t__ type; int str; } ;


 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_ERROR ;
 scalar_t__ REDIS_REPLY_STRING ;
 int assert (int) ;
 int context ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 TYPE_2__* redisCommand (int ,char*,unsigned long long) ;
 int stderr ;
 unsigned long long strtoull (int ,int *,int) ;

__attribute__((used)) static redisReply *sendScan(unsigned long long *it) {
    redisReply *reply = redisCommand(context, "SCAN %llu", *it);


    if(reply == ((void*)0)) {
        fprintf(stderr, "\nI/O error\n");
        exit(1);
    } else if(reply->type == REDIS_REPLY_ERROR) {
        fprintf(stderr, "SCAN error: %s\n", reply->str);
        exit(1);
    } else if(reply->type != REDIS_REPLY_ARRAY) {
        fprintf(stderr, "Non ARRAY response from SCAN!\n");
        exit(1);
    } else if(reply->elements != 2) {
        fprintf(stderr, "Invalid element count from SCAN!\n");
        exit(1);
    }


    assert(reply->element[0]->type == REDIS_REPLY_STRING);
    assert(reply->element[1]->type == REDIS_REPLY_ARRAY);


    *it = strtoull(reply->element[0]->str, ((void*)0), 10);

    return reply;
}
