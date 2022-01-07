
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {char* sizecmd; } ;
typedef TYPE_2__ typeinfo ;
struct TYPE_12__ {unsigned int elements; scalar_t__ type; unsigned long long integer; TYPE_1__** element; } ;
typedef TYPE_3__ redisReply ;
struct TYPE_13__ {int err; char* errstr; } ;
struct TYPE_10__ {char* str; } ;


 scalar_t__ REDIS_OK ;
 scalar_t__ REDIS_REPLY_INTEGER ;
 TYPE_4__* context ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int freeReplyObject (TYPE_3__*) ;
 int redisAppendCommand (TYPE_4__*,char*,char*,char*,...) ;
 scalar_t__ redisGetReply (TYPE_4__*,void**) ;
 int stderr ;

__attribute__((used)) static void getKeySizes(redisReply *keys, typeinfo **types,
                        unsigned long long *sizes, int memkeys,
                        unsigned memkeys_samples)
{
    redisReply *reply;
    unsigned int i;


    for(i=0;i<keys->elements;i++) {

        if(!types[i] || (!types[i]->sizecmd && !memkeys))
            continue;

        if (!memkeys)
            redisAppendCommand(context, "%s %s",
                types[i]->sizecmd, keys->element[i]->str);
        else if (memkeys_samples==0)
            redisAppendCommand(context, "%s %s %s",
                "MEMORY", "USAGE", keys->element[i]->str);
        else
            redisAppendCommand(context, "%s %s %s SAMPLES %u",
                "MEMORY", "USAGE", keys->element[i]->str, memkeys_samples);
    }


    for(i=0;i<keys->elements;i++) {

        if(!types[i] || (!types[i]->sizecmd && !memkeys)) {
            sizes[i] = 0;
            continue;
        }


        if(redisGetReply(context, (void**)&reply)!=REDIS_OK) {
            fprintf(stderr, "Error getting size for key '%s' (%d: %s)\n",
                keys->element[i]->str, context->err, context->errstr);
            exit(1);
        } else if(reply->type != REDIS_REPLY_INTEGER) {


            fprintf(stderr,
                "Warning:  %s on '%s' failed (may have changed type)\n",
                !memkeys? types[i]->sizecmd: "MEMORY USAGE",
                keys->element[i]->str);
            sizes[i] = 0;
        } else {
            sizes[i] = reply->integer;
        }

        freeReplyObject(reply);
    }
}
