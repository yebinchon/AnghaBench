
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_15__ {scalar_t__ type; char const* str; int elements; struct TYPE_15__** element; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_16__ {char* errstr; scalar_t__ err; } ;
typedef TYPE_2__ redisContext ;
struct TYPE_17__ {void* appendonly; void* save; } ;
typedef TYPE_3__ redisConfig ;
struct TYPE_14__ {char* auth; } ;


 int REDIS_OK ;
 scalar_t__ REDIS_REPLY_ARRAY ;
 scalar_t__ REDIS_REPLY_ERROR ;
 TYPE_13__ config ;
 int fprintf (int ,char*,...) ;
 int freeReplyObject (TYPE_1__*) ;
 int redisAppendCommand (TYPE_2__*,char*,char*) ;
 TYPE_2__* redisConnect (char const*,int) ;
 TYPE_2__* redisConnectUnix (char const*) ;
 int redisFree (TYPE_2__*) ;
 int redisGetReply (TYPE_2__*,void**) ;
 void* sdsnew (char*) ;
 int stderr ;
 TYPE_3__* zcalloc (int) ;
 int zfree (TYPE_3__*) ;

__attribute__((used)) static redisConfig *getRedisConfig(const char *ip, int port,
                                   const char *hostsocket)
{
    redisConfig *cfg = zcalloc(sizeof(*cfg));
    if (!cfg) return ((void*)0);
    redisContext *c = ((void*)0);
    redisReply *reply = ((void*)0), *sub_reply = ((void*)0);
    if (hostsocket == ((void*)0))
        c = redisConnect(ip, port);
    else
        c = redisConnectUnix(hostsocket);
    if (c == ((void*)0) || c->err) {
        fprintf(stderr,"Could not connect to Redis at ");
        char *err = (c != ((void*)0) ? c->errstr : "");
        if (hostsocket == ((void*)0)) fprintf(stderr,"%s:%d: %s\n",ip,port,err);
        else fprintf(stderr,"%s: %s\n",hostsocket,err);
        goto fail;
    }

    if(config.auth) {
        void *authReply = ((void*)0);
        redisAppendCommand(c, "AUTH %s", config.auth);
        if (REDIS_OK != redisGetReply(c, &authReply)) goto fail;
        if (reply) freeReplyObject(reply);
        reply = ((redisReply *) authReply);
        if (reply->type == REDIS_REPLY_ERROR) {
            fprintf(stderr, "ERROR: %s\n", reply->str);
            goto fail;
        }
    }

    redisAppendCommand(c, "CONFIG GET %s", "save");
    redisAppendCommand(c, "CONFIG GET %s", "appendonly");
    int i = 0;
    void *r = ((void*)0);
    for (; i < 2; i++) {
        int res = redisGetReply(c, &r);
        if (reply) freeReplyObject(reply);
        reply = ((redisReply *) r);
        if (res != REDIS_OK || !r) goto fail;
        if (reply->type == REDIS_REPLY_ERROR) {
            fprintf(stderr, "ERROR: %s\n", reply->str);
            goto fail;
        }
        if (reply->type != REDIS_REPLY_ARRAY || reply->elements < 2) goto fail;
        sub_reply = reply->element[1];
        char *value = sub_reply->str;
        if (!value) value = "";
        switch (i) {
        case 0: cfg->save = sdsnew(value); break;
        case 1: cfg->appendonly = sdsnew(value); break;
        }
    }
    freeReplyObject(reply);
    redisFree(c);
    return cfg;
fail:
    fprintf(stderr, "ERROR: failed to fetch CONFIG from ");
    if (hostsocket == ((void*)0)) fprintf(stderr, "%s:%d\n", ip, port);
    else fprintf(stderr, "%s\n", hostsocket);
    freeReplyObject(reply);
    redisFree(c);
    zfree(cfg);
    return ((void*)0);
}
