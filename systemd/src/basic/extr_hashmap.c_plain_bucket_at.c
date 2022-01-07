
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plain_hashmap_entry {int dummy; } ;
typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 scalar_t__ bucket_at (int ,unsigned int) ;

__attribute__((used)) static struct plain_hashmap_entry *plain_bucket_at(Hashmap *h, unsigned idx) {
        return (struct plain_hashmap_entry*) bucket_at(HASHMAP_BASE(h), idx);
}
