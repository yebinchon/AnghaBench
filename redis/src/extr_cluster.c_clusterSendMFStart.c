
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union clusterMsgData {int dummy; } clusterMsgData ;
typedef int uint32_t ;
struct TYPE_5__ {int link; } ;
typedef TYPE_1__ clusterNode ;
struct TYPE_6__ {int totlen; } ;
typedef TYPE_2__ clusterMsg ;


 int CLUSTERMSG_TYPE_MFSTART ;
 int clusterBuildMessageHdr (TYPE_2__*,int ) ;
 int clusterSendMessage (int ,unsigned char*,int) ;
 int htonl (int) ;

void clusterSendMFStart(clusterNode *node) {
    clusterMsg buf[1];
    clusterMsg *hdr = (clusterMsg*) buf;
    uint32_t totlen;

    if (!node->link) return;
    clusterBuildMessageHdr(hdr,CLUSTERMSG_TYPE_MFSTART);
    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    hdr->totlen = htonl(totlen);
    clusterSendMessage(node->link,(unsigned char*)buf,totlen);
}
