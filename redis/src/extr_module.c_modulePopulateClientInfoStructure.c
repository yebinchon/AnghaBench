
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; int id; TYPE_1__* db; int conn; } ;
typedef TYPE_2__ client ;
struct TYPE_8__ {int version; int port; int id; int db; int addr; int flags; } ;
struct TYPE_6__ {int id; } ;
typedef TYPE_3__ RedisModuleClientInfoV1 ;


 int CLIENT_BLOCKED ;
 int CLIENT_MULTI ;
 int CLIENT_PUBSUB ;
 int CLIENT_TRACKING ;
 int CLIENT_UNIX_SOCKET ;
 int REDISMODULE_CLIENTINFO_FLAG_BLOCKED ;
 int REDISMODULE_CLIENTINFO_FLAG_MULTI ;
 int REDISMODULE_CLIENTINFO_FLAG_PUBSUB ;
 int REDISMODULE_CLIENTINFO_FLAG_TRACKING ;
 int REDISMODULE_CLIENTINFO_FLAG_UNIXSOCKET ;
 int REDISMODULE_ERR ;
 int REDISMODULE_OK ;
 int connPeerToString (int ,int ,int,int*) ;
 int memset (TYPE_3__*,int ,int) ;

int modulePopulateClientInfoStructure(void *ci, client *client, int structver) {
    if (structver != 1) return REDISMODULE_ERR;

    RedisModuleClientInfoV1 *ci1 = ci;
    memset(ci1,0,sizeof(*ci1));
    ci1->version = structver;
    if (client->flags & CLIENT_MULTI)
        ci1->flags |= REDISMODULE_CLIENTINFO_FLAG_MULTI;
    if (client->flags & CLIENT_PUBSUB)
        ci1->flags |= REDISMODULE_CLIENTINFO_FLAG_PUBSUB;
    if (client->flags & CLIENT_UNIX_SOCKET)
        ci1->flags |= REDISMODULE_CLIENTINFO_FLAG_UNIXSOCKET;
    if (client->flags & CLIENT_TRACKING)
        ci1->flags |= REDISMODULE_CLIENTINFO_FLAG_TRACKING;
    if (client->flags & CLIENT_BLOCKED)
        ci1->flags |= REDISMODULE_CLIENTINFO_FLAG_BLOCKED;

    int port;
    connPeerToString(client->conn,ci1->addr,sizeof(ci1->addr),&port);
    ci1->port = port;
    ci1->db = client->db->id;
    ci1->id = client->id;
    return REDISMODULE_OK;
}
