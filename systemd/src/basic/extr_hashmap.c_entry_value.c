
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct plain_hashmap_entry {void* value; } ;
struct hashmap_base_entry {scalar_t__ key; } ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ HashmapBase ;





 int assert_not_reached (char*) ;

__attribute__((used)) static void *entry_value(HashmapBase *h, struct hashmap_base_entry *e) {
        switch (h->type) {

        case 129:
        case 130:
                return ((struct plain_hashmap_entry*)e)->value;

        case 128:
                return (void*) e->key;

        default:
                assert_not_reached("Unknown hashmap type");
        }
}
