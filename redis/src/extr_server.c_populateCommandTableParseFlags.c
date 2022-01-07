
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct redisCommand {int flags; } ;
typedef char* sds ;


 int ACLGetCommandCategoryFlagByName (char*) ;
 int CMD_ADMIN ;
 int CMD_ASKING ;
 int CMD_CATEGORY_ADMIN ;
 int CMD_CATEGORY_DANGEROUS ;
 int CMD_CATEGORY_FAST ;
 int CMD_CATEGORY_PUBSUB ;
 int CMD_CATEGORY_READ ;
 int CMD_CATEGORY_SLOW ;
 int CMD_CATEGORY_WRITE ;
 int CMD_DENYOOM ;
 int CMD_FAST ;
 int CMD_LOADING ;
 int CMD_NOSCRIPT ;
 int CMD_PUBSUB ;
 int CMD_RANDOM ;
 int CMD_READONLY ;
 int CMD_SKIP_MONITOR ;
 int CMD_SKIP_SLOWLOG ;
 int CMD_SORT_FOR_SCRIPT ;
 int CMD_STALE ;
 int CMD_WRITE ;
 int C_ERR ;
 int C_OK ;
 int sdsfreesplitres (char**,int) ;
 char** sdssplitargs (char*,int*) ;
 int strcasecmp (char*,char*) ;

int populateCommandTableParseFlags(struct redisCommand *c, char *strflags) {
    int argc;
    sds *argv;


    argv = sdssplitargs(strflags,&argc);
    if (argv == ((void*)0)) return C_ERR;

    for (int j = 0; j < argc; j++) {
        char *flag = argv[j];
        if (!strcasecmp(flag,"write")) {
            c->flags |= CMD_WRITE|CMD_CATEGORY_WRITE;
        } else if (!strcasecmp(flag,"read-only")) {
            c->flags |= CMD_READONLY|CMD_CATEGORY_READ;
        } else if (!strcasecmp(flag,"use-memory")) {
            c->flags |= CMD_DENYOOM;
        } else if (!strcasecmp(flag,"admin")) {
            c->flags |= CMD_ADMIN|CMD_CATEGORY_ADMIN|CMD_CATEGORY_DANGEROUS;
        } else if (!strcasecmp(flag,"pub-sub")) {
            c->flags |= CMD_PUBSUB|CMD_CATEGORY_PUBSUB;
        } else if (!strcasecmp(flag,"no-script")) {
            c->flags |= CMD_NOSCRIPT;
        } else if (!strcasecmp(flag,"random")) {
            c->flags |= CMD_RANDOM;
        } else if (!strcasecmp(flag,"to-sort")) {
            c->flags |= CMD_SORT_FOR_SCRIPT;
        } else if (!strcasecmp(flag,"ok-loading")) {
            c->flags |= CMD_LOADING;
        } else if (!strcasecmp(flag,"ok-stale")) {
            c->flags |= CMD_STALE;
        } else if (!strcasecmp(flag,"no-monitor")) {
            c->flags |= CMD_SKIP_MONITOR;
        } else if (!strcasecmp(flag,"no-slowlog")) {
            c->flags |= CMD_SKIP_SLOWLOG;
        } else if (!strcasecmp(flag,"cluster-asking")) {
            c->flags |= CMD_ASKING;
        } else if (!strcasecmp(flag,"fast")) {
            c->flags |= CMD_FAST | CMD_CATEGORY_FAST;
        } else {

            uint64_t catflag;
            if (flag[0] == '@' &&
                (catflag = ACLGetCommandCategoryFlagByName(flag+1)) != 0)
            {
                c->flags |= catflag;
            } else {
                sdsfreesplitres(argv,argc);
                return C_ERR;
            }
        }
    }

    if (!(c->flags & CMD_CATEGORY_FAST)) c->flags |= CMD_CATEGORY_SLOW;

    sdsfreesplitres(argv,argc);
    return C_OK;
}
