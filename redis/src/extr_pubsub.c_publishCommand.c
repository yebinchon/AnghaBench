
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {scalar_t__ cluster_enabled; } ;


 int PROPAGATE_REPL ;
 int addReplyLongLong (TYPE_1__*,int) ;
 int clusterPropagatePublish (int ,int ) ;
 int forceCommandPropagation (TYPE_1__*,int ) ;
 int pubsubPublishMessage (int ,int ) ;
 TYPE_2__ server ;

void publishCommand(client *c) {
    int receivers = pubsubPublishMessage(c->argv[1],c->argv[2]);
    if (server.cluster_enabled)
        clusterPropagatePublish(c->argv[1],c->argv[2]);
    else
        forceCommandPropagation(c,PROPAGATE_REPL);
    addReplyLongLong(c,receivers);
}
