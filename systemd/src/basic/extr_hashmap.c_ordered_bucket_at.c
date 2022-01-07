
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ordered_hashmap_entry {int dummy; } ;
typedef int OrderedHashmap ;


 int HASHMAP_BASE (int *) ;
 scalar_t__ bucket_at (int ,unsigned int) ;

__attribute__((used)) static struct ordered_hashmap_entry *ordered_bucket_at(OrderedHashmap *h, unsigned idx) {
        return (struct ordered_hashmap_entry*) bucket_at(HASHMAP_BASE(h), idx);
}
