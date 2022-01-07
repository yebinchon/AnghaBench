
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tracking_table_max_fill; } ;


 int TRACKING_TABLE_SIZE ;
 int ** TrackingTable ;
 unsigned int TrackingTableUsedSlots ;
 int rand () ;
 TYPE_1__ server ;
 int trackingInvalidateSlot (unsigned int) ;

void trackingLimitUsedSlots(void) {
    static unsigned int timeout_counter = 0;

    if (server.tracking_table_max_fill == 0) return;
    unsigned int max_slots =
        (TRACKING_TABLE_SIZE/100) * server.tracking_table_max_fill;
    if (TrackingTableUsedSlots <= max_slots) {
        timeout_counter = 0;
        return;
    }




    int effort = 100 * (timeout_counter+1);





    while(effort > 0) {
        unsigned int idx = rand() % TRACKING_TABLE_SIZE;
        do {
            effort--;
            idx = (idx+1) % TRACKING_TABLE_SIZE;
            if (TrackingTable[idx] != ((void*)0)) {
                trackingInvalidateSlot(idx);
                if (TrackingTableUsedSlots <= max_slots) {
                    timeout_counter = 0;
                    return;
                } else {
                    break;
                }
            }
        } while(effort > 0);
    }
    timeout_counter++;
}
