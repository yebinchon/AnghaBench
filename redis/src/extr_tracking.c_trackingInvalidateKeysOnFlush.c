
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ tracking_clients; int clients; } ;


 int CLIENT_TRACKING ;
 int TRACKING_TABLE_SIZE ;
 int ** TrackingTable ;
 scalar_t__ TrackingTableUsedSlots ;
 int * listNext (int *) ;
 TYPE_1__* listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int raxFree (int *) ;
 int sendTrackingMessage (TYPE_1__*,int) ;
 TYPE_2__ server ;
 int zfree (int **) ;

void trackingInvalidateKeysOnFlush(int dbid) {
    if (server.tracking_clients) {
        listNode *ln;
        listIter li;
        listRewind(server.clients,&li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            client *c = listNodeValue(ln);
            if (c->flags & CLIENT_TRACKING) {
                sendTrackingMessage(c,-1);
            }
        }
    }


    if (dbid == -1 && TrackingTable) {
        for (int j = 0; j < TRACKING_TABLE_SIZE && TrackingTableUsedSlots > 0; j++) {
            if (TrackingTable[j] != ((void*)0)) {
                raxFree(TrackingTable[j]);
                TrackingTable[j] = ((void*)0);
                TrackingTableUsedSlots--;
            }
        }





        if (server.tracking_clients == 0) {
            zfree(TrackingTable);
            TrackingTable = ((void*)0);
        }
    }
}
