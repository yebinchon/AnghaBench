
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_10__ {scalar_t__ type; char* str; } ;
typedef TYPE_1__ redisReply ;
struct TYPE_12__ {scalar_t__ last_cmd_type; char* hostip; int hostport; int cluster_reissue_command; scalar_t__ output; scalar_t__ interactive; scalar_t__ cluster_mode; scalar_t__ shutdown; } ;
struct TYPE_11__ {scalar_t__ err; } ;


 scalar_t__ ECONNRESET ;
 scalar_t__ EPIPE ;
 scalar_t__ OUTPUT_CSV ;
 scalar_t__ OUTPUT_RAW ;
 scalar_t__ OUTPUT_STANDARD ;
 int REDIS_ERR ;
 scalar_t__ REDIS_ERR_EOF ;
 scalar_t__ REDIS_ERR_IO ;
 scalar_t__ REDIS_OK ;
 scalar_t__ REDIS_REPLY_ERROR ;
 void* atoi (char*) ;
 char* cliFormatReplyCSV (TYPE_1__*) ;
 char* cliFormatReplyRaw (TYPE_1__*) ;
 char* cliFormatReplyTTY (TYPE_1__*,char*) ;
 int cliPrintContextError () ;
 int cliRefreshPrompt () ;
 TYPE_6__ config ;
 TYPE_2__* context ;
 scalar_t__ errno ;
 int exit (int) ;
 int freeReplyObject (TYPE_1__*) ;
 int fwrite (char*,int ,int,int ) ;
 int printf (char*,int,char*,int) ;
 int redisFree (TYPE_2__*) ;
 scalar_t__ redisGetReply (TYPE_2__*,void**) ;
 char* sdscat (char*,char*) ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 char* sdsnew (char*) ;
 int stdout ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int cliReadReply(int output_raw_strings) {
    void *_reply;
    redisReply *reply;
    sds out = ((void*)0);
    int output = 1;

    if (redisGetReply(context,&_reply) != REDIS_OK) {
        if (config.shutdown) {
            redisFree(context);
            context = ((void*)0);
            return REDIS_OK;
        }
        if (config.interactive) {

            if (context->err == REDIS_ERR_IO &&
                (errno == ECONNRESET || errno == EPIPE))
                return REDIS_ERR;
            if (context->err == REDIS_ERR_EOF)
                return REDIS_ERR;
        }
        cliPrintContextError();
        exit(1);
        return REDIS_ERR;
    }

    reply = (redisReply*)_reply;

    config.last_cmd_type = reply->type;



    if (config.cluster_mode && reply->type == REDIS_REPLY_ERROR &&
        (!strncmp(reply->str,"MOVED",5) || !strcmp(reply->str,"ASK")))
    {
        char *p = reply->str, *s;
        int slot;

        output = 0;





        s = strchr(p,' ');
        p = strchr(s+1,' ');
        *p = '\0';
        slot = atoi(s+1);
        s = strrchr(p+1,':');
        *s = '\0';
        sdsfree(config.hostip);
        config.hostip = sdsnew(p+1);
        config.hostport = atoi(s+1);
        if (config.interactive)
            printf("-> Redirected to slot [%d] located at %s:%d\n",
                slot, config.hostip, config.hostport);
        config.cluster_reissue_command = 1;
        cliRefreshPrompt();
    }

    if (output) {
        if (output_raw_strings) {
            out = cliFormatReplyRaw(reply);
        } else {
            if (config.output == OUTPUT_RAW) {
                out = cliFormatReplyRaw(reply);
                out = sdscat(out,"\n");
            } else if (config.output == OUTPUT_STANDARD) {
                out = cliFormatReplyTTY(reply,"");
            } else if (config.output == OUTPUT_CSV) {
                out = cliFormatReplyCSV(reply);
                out = sdscat(out,"\n");
            }
        }
        fwrite(out,sdslen(out),1,stdout);
        sdsfree(out);
    }
    freeReplyObject(reply);
    return REDIS_OK;
}
