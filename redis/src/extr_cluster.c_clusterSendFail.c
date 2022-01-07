
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nodename; } ;
struct TYPE_8__ {TYPE_1__ about; } ;
struct TYPE_9__ {TYPE_2__ fail; } ;
struct TYPE_10__ {int totlen; TYPE_3__ data; } ;
typedef TYPE_4__ clusterMsg ;


 int CLUSTERMSG_TYPE_FAIL ;
 int CLUSTER_NAMELEN ;
 int clusterBroadcastMessage (TYPE_4__*,int ) ;
 int clusterBuildMessageHdr (TYPE_4__*,int ) ;
 int memcpy (int ,char*,int ) ;
 int ntohl (int ) ;

void clusterSendFail(char *nodename) {
    clusterMsg buf[1];
    clusterMsg *hdr = (clusterMsg*) buf;

    clusterBuildMessageHdr(hdr,CLUSTERMSG_TYPE_FAIL);
    memcpy(hdr->data.fail.about.nodename,nodename,CLUSTER_NAMELEN);
    clusterBroadcastMessage(buf,ntohl(hdr->totlen));
}
