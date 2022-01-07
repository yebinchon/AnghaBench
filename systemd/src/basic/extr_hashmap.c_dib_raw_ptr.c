
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int dib_raw_t ;
struct TYPE_7__ {int entry_size; } ;
struct TYPE_6__ {size_t type; } ;
typedef TYPE_1__ HashmapBase ;


 TYPE_4__* hashmap_type_info ;
 int n_buckets (TYPE_1__*) ;
 scalar_t__ storage_ptr (TYPE_1__*) ;

__attribute__((used)) static dib_raw_t *dib_raw_ptr(HashmapBase *h) {
        return (dib_raw_t*)
                ((uint8_t*) storage_ptr(h) + hashmap_type_info[h->type].entry_size * n_buckets(h));
}
