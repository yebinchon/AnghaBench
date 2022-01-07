
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int name_hash; } ;
struct cache_entry {int ce_flags; int * next; int name; } ;


 int CE_HASHED ;
 int ce_namelen (struct cache_entry*) ;
 unsigned int hash_name (int ,int ) ;
 void** insert_hash (unsigned int,struct cache_entry*,int *) ;

__attribute__((used)) static void hash_index_entry(struct index_state *istate, struct cache_entry *ce)
{
    void **pos;
    unsigned int hash;

    if (ce->ce_flags & CE_HASHED)
        return;
    ce->ce_flags |= CE_HASHED;
    ce->next = ((void*)0);
    hash = hash_name(ce->name, ce_namelen(ce));
    pos = insert_hash(hash, ce, &istate->name_hash);
    if (pos) {
        ce->next = *pos;
        *pos = ce;
    }



}
