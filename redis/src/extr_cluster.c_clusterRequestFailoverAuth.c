
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union clusterMsgData {int dummy; } clusterMsgData ;
typedef int uint32_t ;
struct TYPE_7__ {int totlen; int * mflags; } ;
typedef TYPE_2__ clusterMsg ;
struct TYPE_8__ {TYPE_1__* cluster; } ;
struct TYPE_6__ {scalar_t__ mf_end; } ;


 int CLUSTERMSG_FLAG0_FORCEACK ;
 int CLUSTERMSG_TYPE_FAILOVER_AUTH_REQUEST ;
 int clusterBroadcastMessage (TYPE_2__*,int) ;
 int clusterBuildMessageHdr (TYPE_2__*,int ) ;
 int htonl (int) ;
 TYPE_3__ server ;

void clusterRequestFailoverAuth(void) {
    clusterMsg buf[1];
    clusterMsg *hdr = (clusterMsg*) buf;
    uint32_t totlen;

    clusterBuildMessageHdr(hdr,CLUSTERMSG_TYPE_FAILOVER_AUTH_REQUEST);



    if (server.cluster->mf_end) hdr->mflags[0] |= CLUSTERMSG_FLAG0_FORCEACK;
    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    hdr->totlen = htonl(totlen);
    clusterBroadcastMessage(buf,totlen);
}
