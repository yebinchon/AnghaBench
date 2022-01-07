
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ sds ;
struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;


 int TRACKING_TABLE_SIZE ;
 int * TrackingTable ;
 scalar_t__ TrackingTableUsedSlots ;
 int crc64 (int ,unsigned char*,int ) ;
 int sdslen (scalar_t__) ;
 int trackingInvalidateSlot (int) ;

void trackingInvalidateKey(robj *keyobj) {
    if (TrackingTable == ((void*)0) || TrackingTableUsedSlots == 0) return;

    sds sdskey = keyobj->ptr;
    uint64_t hash = crc64(0,
        (unsigned char*)sdskey,sdslen(sdskey))&(TRACKING_TABLE_SIZE-1);
    trackingInvalidateSlot(hash);
}
