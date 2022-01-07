
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct track_item {int name; int slot; } ;


 int free (int ) ;
 struct track_item* mfree (struct track_item*) ;
 int sd_bus_slot_unref (int ) ;

__attribute__((used)) static struct track_item* track_item_free(struct track_item *i) {

        if (!i)
                return ((void*)0);

        sd_bus_slot_unref(i->slot);
        free(i->name);
        return mfree(i);
}
