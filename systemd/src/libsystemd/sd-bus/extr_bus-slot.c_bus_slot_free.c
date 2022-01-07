
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int description; int userdata; int (* destroy_callback ) (int ) ;} ;
typedef TYPE_1__ sd_bus_slot ;


 int assert (TYPE_1__*) ;
 int bus_slot_disconnect (TYPE_1__*,int) ;
 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int stub1 (int ) ;

__attribute__((used)) static sd_bus_slot* bus_slot_free(sd_bus_slot *slot) {
        assert(slot);

        bus_slot_disconnect(slot, 0);

        if (slot->destroy_callback)
                slot->destroy_callback(slot->userdata);

        free(slot->description);
        return mfree(slot);
}
