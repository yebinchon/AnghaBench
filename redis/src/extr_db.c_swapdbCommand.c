
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_10__ {int dirty; scalar_t__ cluster_enabled; } ;
struct TYPE_9__ {int ok; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 scalar_t__ dbSwapDatabases (long,long) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,int ,long*,char*) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;

void swapdbCommand(client *c) {
    long id1, id2;


    if (server.cluster_enabled) {
        addReplyError(c,"SWAPDB is not allowed in cluster mode");
        return;
    }


    if (getLongFromObjectOrReply(c, c->argv[1], &id1,
        "invalid first DB index") != C_OK)
        return;

    if (getLongFromObjectOrReply(c, c->argv[2], &id2,
        "invalid second DB index") != C_OK)
        return;


    if (dbSwapDatabases(id1,id2) == C_ERR) {
        addReplyError(c,"DB index is out of range");
        return;
    } else {
        server.dirty++;
        addReply(c,shared.ok);
    }
}
