
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* hostsocket; char* hostip; int hostport; scalar_t__ tls; } ;
struct TYPE_7__ {char* errstr; int fd; scalar_t__ err; } ;


 int CC_FORCE ;
 int CC_QUIET ;
 int REDIS_CLI_KEEPALIVE_INTERVAL ;
 scalar_t__ REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int anetKeepAlive (int *,int ,int ) ;
 scalar_t__ cliAuth () ;
 scalar_t__ cliSecureConnection (TYPE_1__*,char const**) ;
 scalar_t__ cliSelect () ;
 scalar_t__ cliSwitchProto () ;
 TYPE_5__ config ;
 TYPE_1__* context ;
 int fprintf (int ,char*,...) ;
 TYPE_1__* redisConnect (char*,int) ;
 TYPE_1__* redisConnectUnix (char*) ;
 int redisFree (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static int cliConnect(int flags) {
    if (context == ((void*)0) || flags & CC_FORCE) {
        if (context != ((void*)0)) {
            redisFree(context);
        }

        if (config.hostsocket == ((void*)0)) {
            context = redisConnect(config.hostip,config.hostport);
        } else {
            context = redisConnectUnix(config.hostsocket);
        }

        if (!context->err && config.tls) {
            const char *err = ((void*)0);
            if (cliSecureConnection(context, &err) == REDIS_ERR && err) {
                fprintf(stderr, "Could not negotiate a TLS connection: %s\n", err);
                context = ((void*)0);
                redisFree(context);
                return REDIS_ERR;
            }
        }

        if (context->err) {
            if (!(flags & CC_QUIET)) {
                fprintf(stderr,"Could not connect to Redis at ");
                if (config.hostsocket == ((void*)0))
                    fprintf(stderr,"%s:%d: %s\n",
                        config.hostip,config.hostport,context->errstr);
                else
                    fprintf(stderr,"%s: %s\n",
                        config.hostsocket,context->errstr);
            }
            redisFree(context);
            context = ((void*)0);
            return REDIS_ERR;
        }






        anetKeepAlive(((void*)0), context->fd, REDIS_CLI_KEEPALIVE_INTERVAL);


        if (cliAuth() != REDIS_OK)
            return REDIS_ERR;
        if (cliSelect() != REDIS_OK)
            return REDIS_ERR;
        if (cliSwitchProto() != REDIS_OK)
            return REDIS_ERR;
    }
    return REDIS_OK;
}
