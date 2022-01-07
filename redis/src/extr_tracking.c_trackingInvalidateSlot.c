
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_9__ {int key_len; int key; } ;
typedef TYPE_1__ raxIterator ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_2__ client ;


 int CLIENT_TRACKING ;
 int ** TrackingTable ;
 int TrackingTableUsedSlots ;
 TYPE_2__* lookupClientByID (size_t) ;
 int memcpy (size_t*,int ,int ) ;
 int raxFree (int *) ;
 scalar_t__ raxNext (TYPE_1__*) ;
 int raxSeek (TYPE_1__*,char*,int *,int ) ;
 int raxStart (TYPE_1__*,int *) ;
 int raxStop (TYPE_1__*) ;
 int sendTrackingMessage (TYPE_2__*,size_t) ;

void trackingInvalidateSlot(uint64_t slot) {
    if (TrackingTable == ((void*)0) || TrackingTable[slot] == ((void*)0)) return;

    raxIterator ri;
    raxStart(&ri,TrackingTable[slot]);
    raxSeek(&ri,"^",((void*)0),0);
    while(raxNext(&ri)) {
        uint64_t id;
        memcpy(&id,ri.key,ri.key_len);
        client *c = lookupClientByID(id);
        if (c == ((void*)0) || !(c->flags & CLIENT_TRACKING)) continue;
        sendTrackingMessage(c,slot);
    }
    raxStop(&ri);



    raxFree(TrackingTable[slot]);
    TrackingTable[slot] = ((void*)0);
    TrackingTableUsedSlots--;
}
