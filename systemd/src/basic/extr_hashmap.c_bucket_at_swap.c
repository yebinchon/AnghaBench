
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_entries {struct ordered_hashmap_entry* e; } ;
struct ordered_hashmap_entry {int dummy; } ;


 unsigned int _IDX_SWAP_BEGIN ;

__attribute__((used)) static struct ordered_hashmap_entry *bucket_at_swap(struct swap_entries *swap, unsigned idx) {
        return &swap->e[idx - _IDX_SWAP_BEGIN];
}
