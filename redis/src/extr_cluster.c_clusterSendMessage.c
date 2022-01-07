
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_7__ {int type; } ;
typedef TYPE_2__ clusterMsg ;
struct TYPE_8__ {int sndbuf; int conn; } ;
typedef TYPE_3__ clusterLink ;
struct TYPE_9__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {int * stats_bus_messages_sent; } ;


 size_t CLUSTERMSG_TYPE_COUNT ;
 int clusterWriteHandler ;
 int connSetWriteHandlerWithBarrier (int ,int ,int) ;
 size_t ntohs (int ) ;
 int sdscatlen (int ,unsigned char*,size_t) ;
 scalar_t__ sdslen (int ) ;
 TYPE_4__ server ;

void clusterSendMessage(clusterLink *link, unsigned char *msg, size_t msglen) {
    if (sdslen(link->sndbuf) == 0 && msglen != 0)
        connSetWriteHandlerWithBarrier(link->conn, clusterWriteHandler, 1);

    link->sndbuf = sdscatlen(link->sndbuf, msg, msglen);


    clusterMsg *hdr = (clusterMsg*) msg;
    uint16_t type = ntohs(hdr->type);
    if (type < CLUSTERMSG_TYPE_COUNT)
        server.cluster->stats_bus_messages_sent[type]++;
}
