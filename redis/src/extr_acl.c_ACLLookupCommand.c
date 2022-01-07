
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct redisCommand {int dummy; } ;
typedef int sds ;
struct TYPE_2__ {int orig_commands; } ;


 struct redisCommand* dictFetchValue (int ,int ) ;
 int sdsfree (int ) ;
 int sdsnew (char const*) ;
 TYPE_1__ server ;

struct redisCommand *ACLLookupCommand(const char *name) {
    struct redisCommand *cmd;
    sds sdsname = sdsnew(name);
    cmd = dictFetchValue(server.orig_commands, sdsname);
    sdsfree(sdsname);
    return cmd;
}
