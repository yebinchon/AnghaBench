
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef scalar_t__ sds ;
struct TYPE_4__ {int id; TYPE_3__** argv; int argc; int cmd; } ;
typedef TYPE_1__ client ;
struct TYPE_5__ {scalar_t__ ptr; } ;


 int TRACKING_TABLE_SIZE ;
 int ** TrackingTable ;
 int TrackingTableUsedSlots ;
 int crc64 (int ,unsigned char*,int ) ;
 int getKeysFreeResult (int*) ;
 int* getKeysFromCommand (int ,TYPE_3__**,int ,int*) ;
 int * raxNew () ;
 int raxTryInsert (int *,unsigned char*,int,int *,int *) ;
 int sdslen (scalar_t__) ;

void trackingRememberKeys(client *c) {
    int numkeys;
    int *keys = getKeysFromCommand(c->cmd,c->argv,c->argc,&numkeys);
    if (keys == ((void*)0)) return;

    for(int j = 0; j < numkeys; j++) {
        int idx = keys[j];
        sds sdskey = c->argv[idx]->ptr;
        uint64_t hash = crc64(0,
            (unsigned char*)sdskey,sdslen(sdskey))&(TRACKING_TABLE_SIZE-1);
        if (TrackingTable[hash] == ((void*)0)) {
            TrackingTable[hash] = raxNew();
            TrackingTableUsedSlots++;
        }
        raxTryInsert(TrackingTable[hash],
            (unsigned char*)&c->id,sizeof(c->id),((void*)0),((void*)0));
    }
    getKeysFreeResult(keys);
}
