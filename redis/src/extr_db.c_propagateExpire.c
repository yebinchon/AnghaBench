
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int robj ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ redisDb ;
struct TYPE_7__ {scalar_t__ aof_state; int slaves; int delCommand; } ;
struct TYPE_6__ {int * del; int * unlink; } ;


 scalar_t__ AOF_OFF ;
 int decrRefCount (int *) ;
 int feedAppendOnlyFile (int ,int ,int **,int) ;
 int incrRefCount (int *) ;
 int replicationFeedSlaves (int ,int ,int **,int) ;
 TYPE_3__ server ;
 TYPE_2__ shared ;

void propagateExpire(redisDb *db, robj *key, int lazy) {
    robj *argv[2];

    argv[0] = lazy ? shared.unlink : shared.del;
    argv[1] = key;
    incrRefCount(argv[0]);
    incrRefCount(argv[1]);

    if (server.aof_state != AOF_OFF)
        feedAppendOnlyFile(server.delCommand,db->id,argv,2);
    replicationFeedSlaves(server.slaves,db->id,argv,2);

    decrRefCount(argv[0]);
    decrRefCount(argv[1]);
}
