
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct swap_entries {int dummy; } ;
struct hashmap_base_entry {int dummy; } ;
struct TYPE_3__ {struct hashmap_base_entry b; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
typedef int HashmapBase ;


 unsigned int _IDX_SWAP_BEGIN ;
 unsigned int _IDX_SWAP_END ;
 int assert_not_reached (char*) ;
 struct hashmap_base_entry* bucket_at (int *,unsigned int) ;
 TYPE_2__* bucket_at_swap (struct swap_entries*,unsigned int) ;

__attribute__((used)) static struct hashmap_base_entry *bucket_at_virtual(HashmapBase *h, struct swap_entries *swap,
                                                    unsigned idx) {
        if (idx < _IDX_SWAP_BEGIN)
                return bucket_at(h, idx);

        if (idx < _IDX_SWAP_END)
                return &bucket_at_swap(swap, idx)->p.b;

        assert_not_reached("Invalid index");
}
