
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int options; int member_0; } ;
typedef TYPE_1__ redisOptions ;
typedef int redisContext ;


 int REDIS_OPTIONS_SET_TCP (TYPE_1__*,char const*,int) ;
 int REDIS_OPT_NONBLOCK ;
 int * redisConnectWithOptions (TYPE_1__*) ;

redisContext *redisConnectNonBlock(const char *ip, int port) {
    redisOptions options = {0};
    REDIS_OPTIONS_SET_TCP(&options, ip, port);
    options.options |= REDIS_OPT_NONBLOCK;
    return redisConnectWithOptions(&options);
}
