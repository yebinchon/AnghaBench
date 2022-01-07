
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int redisReply ;
struct TYPE_9__ {char* ip; int port; TYPE_2__* context; } ;
typedef TYPE_1__ clusterManagerNode ;
struct TYPE_11__ {scalar_t__ auth; int * user; scalar_t__ tls; } ;
struct TYPE_10__ {char* errstr; int fd; scalar_t__ err; } ;


 int REDIS_CLI_KEEPALIVE_INTERVAL ;
 scalar_t__ REDIS_ERR ;
 int anetKeepAlive (int *,int ,int ) ;
 scalar_t__ cliSecureConnection (TYPE_2__*,char const**) ;
 int clusterManagerCheckRedisReply (TYPE_1__*,int *,int *) ;
 TYPE_5__ config ;
 int fprintf (int ,char*,...) ;
 int freeReplyObject (int *) ;
 int * redisCommand (TYPE_2__*,char*,int *,...) ;
 TYPE_2__* redisConnect (char*,int) ;
 int redisFree (TYPE_2__*) ;
 int stderr ;

__attribute__((used)) static int clusterManagerNodeConnect(clusterManagerNode *node) {
    if (node->context) redisFree(node->context);
    node->context = redisConnect(node->ip, node->port);
    if (!node->context->err && config.tls) {
        const char *err = ((void*)0);
        if (cliSecureConnection(node->context, &err) == REDIS_ERR && err) {
            fprintf(stderr,"TLS Error: %s\n", err);
            redisFree(node->context);
            node->context = ((void*)0);
            return 0;
        }
    }
    if (node->context->err) {
        fprintf(stderr,"Could not connect to Redis at ");
        fprintf(stderr,"%s:%d: %s\n", node->ip, node->port,
                node->context->errstr);
        redisFree(node->context);
        node->context = ((void*)0);
        return 0;
    }




    anetKeepAlive(((void*)0), node->context->fd, REDIS_CLI_KEEPALIVE_INTERVAL);
    if (config.auth) {
        redisReply *reply;
        if (config.user == ((void*)0))
            reply = redisCommand(node->context,"AUTH %s", config.auth);
        else
            reply = redisCommand(node->context,"AUTH %s %s",
                                 config.user,config.auth);
        int ok = clusterManagerCheckRedisReply(node, reply, ((void*)0));
        if (reply != ((void*)0)) freeReplyObject(reply);
        if (!ok) return 0;
    }
    return 1;
}
