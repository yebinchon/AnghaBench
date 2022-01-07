
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_dir_hash {struct target_dir_entry** buckets; } ;
struct target_dir_entry {size_t hashcode; struct target_dir_entry* next_dir_hash_entry; } ;


 size_t NUM_DIR_HASH_BUCKETS ;

__attribute__((used)) static void
delete_entry(struct target_dir_hash *dh, struct target_dir_entry *de)
{
    struct target_dir_entry **ent;
    ent = &dh->buckets[de->hashcode % NUM_DIR_HASH_BUCKETS];
    while (*ent && ((*ent) != de))
        ent = &(*ent)->next_dir_hash_entry;
    if (*ent)
        *ent = (*ent)->next_dir_hash_entry;
}
