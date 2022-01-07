
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* source_addr; } ;
struct TYPE_7__ {TYPE_1__ tcp; } ;
struct TYPE_8__ {int options; TYPE_2__ endpoint; int member_0; } ;
typedef TYPE_3__ redisOptions ;
typedef int redisContext ;


 int REDIS_OPTIONS_SET_TCP (TYPE_3__*,char const*,int) ;
 int REDIS_OPT_NONBLOCK ;
 int * redisConnectWithOptions (TYPE_3__*) ;

redisContext *redisConnectBindNonBlock(const char *ip, int port,
                                       const char *source_addr) {
    redisOptions options = {0};
    REDIS_OPTIONS_SET_TCP(&options, ip, port);
    options.endpoint.tcp.source_addr = source_addr;
    options.options |= REDIS_OPT_NONBLOCK;
    return redisConnectWithOptions(&options);
}
