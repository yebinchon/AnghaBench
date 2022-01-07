
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int slots; int configEpoch; int name; } ;
typedef TYPE_4__ clusterNode ;
struct TYPE_8__ {int slots; int configEpoch; int nodename; } ;
struct TYPE_10__ {TYPE_1__ nodecfg; } ;
struct TYPE_9__ {TYPE_3__ update; } ;
struct TYPE_12__ {int totlen; TYPE_2__ data; } ;
typedef TYPE_5__ clusterMsg ;
typedef int clusterLink ;


 int CLUSTERMSG_TYPE_UPDATE ;
 int CLUSTER_NAMELEN ;
 int clusterBuildMessageHdr (TYPE_5__*,int ) ;
 int clusterSendMessage (int *,unsigned char*,int ) ;
 int htonu64 (int ) ;
 int memcpy (int ,int ,int) ;
 int ntohl (int ) ;

void clusterSendUpdate(clusterLink *link, clusterNode *node) {
    clusterMsg buf[1];
    clusterMsg *hdr = (clusterMsg*) buf;

    if (link == ((void*)0)) return;
    clusterBuildMessageHdr(hdr,CLUSTERMSG_TYPE_UPDATE);
    memcpy(hdr->data.update.nodecfg.nodename,node->name,CLUSTER_NAMELEN);
    hdr->data.update.nodecfg.configEpoch = htonu64(node->configEpoch);
    memcpy(hdr->data.update.nodecfg.slots,node->slots,sizeof(node->slots));
    clusterSendMessage(link,(unsigned char*)buf,ntohl(hdr->totlen));
}
