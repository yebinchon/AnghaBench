
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int name_hash; } ;
struct cache_entry {int ce_flags; struct cache_entry* next; } ;


 int CE_UNHASHED ;
 unsigned int hash_name (char const*,int) ;
 int lazy_init_name_hash (struct index_state*) ;
 struct cache_entry* lookup_hash (unsigned int,int *) ;
 scalar_t__ same_name (struct cache_entry*,char const*,int,int) ;

struct cache_entry *index_name_exists(struct index_state *istate, const char *name, int namelen, int icase)
{
    unsigned int hash = hash_name(name, namelen);
    struct cache_entry *ce;

    lazy_init_name_hash(istate);
    ce = lookup_hash(hash, &istate->name_hash);

    while (ce) {
        if (!(ce->ce_flags & CE_UNHASHED)) {
            if (same_name(ce, name, namelen, icase))
                return ce;
        }
        ce = ce->next;
    }
    return ((void*)0);
}
