
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* masterhost; int second_replid_offset; int master_repl_offset; int replid2; int replid; int masterport; } ;
struct TYPE_4__ {int version; char* masterhost; int repl2_offset; int repl1_offset; int replid2; int replid1; int masterport; int master; } ;
typedef TYPE_1__ RedisModuleReplicationInfoV1 ;


 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_2__ server ;

int modulePopulateReplicationInfoStructure(void *ri, int structver) {
    if (structver != 1) return REDISMODULE_ERR;

    RedisModuleReplicationInfoV1 *ri1 = ri;
    memset(ri1,0,sizeof(*ri1));
    ri1->version = structver;
    ri1->master = server.masterhost==((void*)0);
    ri1->masterhost = server.masterhost? server.masterhost: "";
    ri1->masterport = server.masterport;
    ri1->replid1 = server.replid;
    ri1->replid2 = server.replid2;
    ri1->repl1_offset = server.master_repl_offset;
    ri1->repl2_offset = server.second_replid_offset;
    return REDISMODULE_OK;
}
