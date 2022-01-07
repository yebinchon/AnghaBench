
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct redisCommand {int dummy; } ;
typedef int sds ;
struct TYPE_2__ {int commands; } ;


 struct redisCommand* dictFetchValue (int ,int ) ;
 int sdsfree (int ) ;
 int sdsnew (char*) ;
 TYPE_1__ server ;

struct redisCommand *lookupCommandByCString(char *s) {
    struct redisCommand *cmd;
    sds name = sdsnew(s);

    cmd = dictFetchValue(server.commands, name);
    sdsfree(name);
    return cmd;
}
