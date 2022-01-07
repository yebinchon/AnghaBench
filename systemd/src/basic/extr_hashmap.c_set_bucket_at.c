
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_entry {int dummy; } ;
typedef int Set ;


 int HASHMAP_BASE (int *) ;
 scalar_t__ bucket_at (int ,unsigned int) ;

__attribute__((used)) static struct set_entry *set_bucket_at(Set *h, unsigned idx) {
        return (struct set_entry*) bucket_at(HASHMAP_BASE(h), idx);
}
