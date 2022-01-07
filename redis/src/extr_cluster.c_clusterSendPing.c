
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef union clusterMsgData {int dummy; } clusterMsgData ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_18__ {int flags; scalar_t__ numslots; int * link; } ;
typedef TYPE_3__ clusterNode ;
typedef int clusterMsgDataGossip ;
struct TYPE_19__ {int totlen; int count; } ;
typedef TYPE_4__ clusterMsg ;
struct TYPE_20__ {TYPE_1__* node; } ;
typedef TYPE_5__ clusterLink ;
struct TYPE_21__ {TYPE_2__* cluster; } ;
struct TYPE_17__ {int stats_pfail_nodes; int nodes; } ;
struct TYPE_16__ {int ping_sent; } ;


 int CLUSTERMSG_TYPE_PING ;
 int CLUSTER_NODE_HANDSHAKE ;
 int CLUSTER_NODE_NOADDR ;
 int CLUSTER_NODE_PFAIL ;
 int clusterBuildMessageHdr (TYPE_4__*,int) ;
 scalar_t__ clusterNodeIsInGossipSection (TYPE_4__*,int,TYPE_3__*) ;
 int clusterSendMessage (TYPE_5__*,unsigned char*,int) ;
 int clusterSetGossipEntry (TYPE_4__*,int,TYPE_3__*) ;
 int * dictGetRandomKey (int ) ;
 int * dictGetSafeIterator (int ) ;
 TYPE_3__* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSize (int ) ;
 int floor (int) ;
 int htonl (int) ;
 int htons (int) ;
 int mstime () ;
 TYPE_3__* myself ;
 TYPE_6__ server ;
 unsigned char* zcalloc (int) ;
 int zfree (unsigned char*) ;

void clusterSendPing(clusterLink *link, int type) {
    unsigned char *buf;
    clusterMsg *hdr;
    int gossipcount = 0;
    int wanted;
    int totlen;




    int freshnodes = dictSize(server.cluster->nodes)-2;
    wanted = floor(dictSize(server.cluster->nodes)/10);
    if (wanted < 3) wanted = 3;
    if (wanted > freshnodes) wanted = freshnodes;



    int pfail_wanted = server.cluster->stats_pfail_nodes;




    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += (sizeof(clusterMsgDataGossip)*(wanted+pfail_wanted));


    if (totlen < (int)sizeof(clusterMsg)) totlen = sizeof(clusterMsg);
    buf = zcalloc(totlen);
    hdr = (clusterMsg*) buf;


    if (link->node && type == CLUSTERMSG_TYPE_PING)
        link->node->ping_sent = mstime();
    clusterBuildMessageHdr(hdr,type);


    int maxiterations = wanted*3;
    while(freshnodes > 0 && gossipcount < wanted && maxiterations--) {
        dictEntry *de = dictGetRandomKey(server.cluster->nodes);
        clusterNode *this = dictGetVal(de);



        if (this == myself) continue;


        if (this->flags & CLUSTER_NODE_PFAIL) continue;






        if (this->flags & (CLUSTER_NODE_HANDSHAKE|CLUSTER_NODE_NOADDR) ||
            (this->link == ((void*)0) && this->numslots == 0))
        {
            freshnodes--;
            continue;
        }


        if (clusterNodeIsInGossipSection(hdr,gossipcount,this)) continue;


        clusterSetGossipEntry(hdr,gossipcount,this);
        freshnodes--;
        gossipcount++;
    }


    if (pfail_wanted) {
        dictIterator *di;
        dictEntry *de;

        di = dictGetSafeIterator(server.cluster->nodes);
        while((de = dictNext(di)) != ((void*)0) && pfail_wanted > 0) {
            clusterNode *node = dictGetVal(de);
            if (node->flags & CLUSTER_NODE_HANDSHAKE) continue;
            if (node->flags & CLUSTER_NODE_NOADDR) continue;
            if (!(node->flags & CLUSTER_NODE_PFAIL)) continue;
            clusterSetGossipEntry(hdr,gossipcount,node);
            freshnodes--;
            gossipcount++;



            pfail_wanted--;
        }
        dictReleaseIterator(di);
    }



    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += (sizeof(clusterMsgDataGossip)*gossipcount);
    hdr->count = htons(gossipcount);
    hdr->totlen = htonl(totlen);
    clusterSendMessage(link,buf,totlen);
    zfree(buf);
}
