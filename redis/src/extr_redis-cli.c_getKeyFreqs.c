
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned int elements; scalar_t__ type; char* str; unsigned long long integer; TYPE_1__** element; } ;
typedef TYPE_2__ redisReply ;
struct TYPE_10__ {int err; char* errstr; } ;
struct TYPE_8__ {char* str; } ;


 scalar_t__ REDIS_OK ;
 scalar_t__ REDIS_REPLY_ERROR ;
 scalar_t__ REDIS_REPLY_INTEGER ;
 TYPE_3__* context ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int freeReplyObject (TYPE_2__*) ;
 int redisAppendCommand (TYPE_3__*,char*,char*) ;
 scalar_t__ redisGetReply (TYPE_3__*,void**) ;
 int stderr ;

__attribute__((used)) static void getKeyFreqs(redisReply *keys, unsigned long long *freqs) {
    redisReply *reply;
    unsigned int i;


    for(i=0;i<keys->elements;i++) {
        redisAppendCommand(context, "OBJECT freq %s", keys->element[i]->str);
    }


    for(i=0;i<keys->elements;i++) {
        if(redisGetReply(context, (void**)&reply)!=REDIS_OK) {
            fprintf(stderr, "Error getting freq for key '%s' (%d: %s)\n",
                keys->element[i]->str, context->err, context->errstr);
            exit(1);
        } else if(reply->type != REDIS_REPLY_INTEGER) {
            if(reply->type == REDIS_REPLY_ERROR) {
                fprintf(stderr, "Error: %s\n", reply->str);
                exit(1);
            } else {
                fprintf(stderr, "Warning: OBJECT freq on '%s' failed (may have been deleted)\n", keys->element[i]->str);
                freqs[i] = 0;
            }
        } else {
            freqs[i] = reply->integer;
        }
        freeReplyObject(reply);
    }
}
