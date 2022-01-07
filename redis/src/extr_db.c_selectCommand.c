
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_11__ {scalar_t__ cluster_enabled; } ;
struct TYPE_10__ {int ok; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,int ,long*,char*) ;
 scalar_t__ selectDb (TYPE_1__*,long) ;
 TYPE_3__ server ;
 TYPE_2__ shared ;

void selectCommand(client *c) {
    long id;

    if (getLongFromObjectOrReply(c, c->argv[1], &id,
        "invalid DB index") != C_OK)
        return;

    if (server.cluster_enabled && id != 0) {
        addReplyError(c,"SELECT is not allowed in cluster mode");
        return;
    }
    if (selectDb(c,id) == C_ERR) {
        addReplyError(c,"DB index is out of range");
    } else {
        addReply(c,shared.ok);
    }
}
