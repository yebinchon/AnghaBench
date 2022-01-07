
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct redisCommand {int dummy; } ;
typedef int robj ;
struct TYPE_2__ {scalar_t__ aof_state; int slaves; } ;


 scalar_t__ AOF_OFF ;
 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int feedAppendOnlyFile (struct redisCommand*,int,int **,int) ;
 int replicationFeedSlaves (int ,int,int **,int) ;
 TYPE_1__ server ;

void propagate(struct redisCommand *cmd, int dbid, robj **argv, int argc,
               int flags)
{
    if (server.aof_state != AOF_OFF && flags & PROPAGATE_AOF)
        feedAppendOnlyFile(cmd,dbid,argv,argc);
    if (flags & PROPAGATE_REPL)
        replicationFeedSlaves(server.slaves,dbid,argv,argc);
}
