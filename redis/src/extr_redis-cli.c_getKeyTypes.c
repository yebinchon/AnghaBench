
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int typeinfo ;
typedef int sds ;
struct TYPE_9__ {unsigned int elements; scalar_t__ type; char* str; TYPE_1__** element; } ;
typedef TYPE_2__ redisReply ;
typedef int dictEntry ;
typedef int dict ;
struct TYPE_10__ {int err; char* errstr; } ;
struct TYPE_8__ {char* str; } ;


 scalar_t__ REDIS_OK ;
 scalar_t__ REDIS_REPLY_ERROR ;
 scalar_t__ REDIS_REPLY_STATUS ;
 TYPE_3__* context ;
 int * dictFind (int *,int ) ;
 int * dictGetVal (int *) ;
 int exit (int) ;
 int fprintf (int ,char*,scalar_t__,...) ;
 int freeReplyObject (TYPE_2__*) ;
 int redisAppendCommand (TYPE_3__*,char*,char*) ;
 scalar_t__ redisGetReply (TYPE_3__*,void**) ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int type_other ;
 int * typeinfo_add (int *,char*,int *) ;

__attribute__((used)) static void getKeyTypes(dict *types_dict, redisReply *keys, typeinfo **types) {
    redisReply *reply;
    unsigned int i;


    for(i=0;i<keys->elements;i++) {
        redisAppendCommand(context, "TYPE %s", keys->element[i]->str);
    }


    for(i=0;i<keys->elements;i++) {
        if(redisGetReply(context, (void**)&reply)!=REDIS_OK) {
            fprintf(stderr, "Error getting type for key '%s' (%d: %s)\n",
                keys->element[i]->str, context->err, context->errstr);
            exit(1);
        } else if(reply->type != REDIS_REPLY_STATUS) {
            if(reply->type == REDIS_REPLY_ERROR) {
                fprintf(stderr, "TYPE returned an error: %s\n", reply->str);
            } else {
                fprintf(stderr,
                    "Invalid reply type (%d) for TYPE on key '%s'!\n",
                    reply->type, keys->element[i]->str);
            }
            exit(1);
        }

        sds typereply = sdsnew(reply->str);
        dictEntry *de = dictFind(types_dict, typereply);
        sdsfree(typereply);
        typeinfo *type = ((void*)0);
        if (de)
            type = dictGetVal(de);
        else if (strcmp(reply->str, "none"))
            type = typeinfo_add(types_dict, reply->str, &type_other);
        types[i] = type;
        freeReplyObject(reply);
    }
}
