
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int ce_flags; int modifier; int name; int ce_mode; } ;
typedef int GString ;


 int CE_REMOVE ;
 scalar_t__ S_ISDIR (int ) ;
 int g_string_append_printf (int *,char*,int ) ;
 int seaf_warning (char*,int ) ;

__attribute__((used)) static int
modifiers_to_string (GString *buf, struct index_state *istate)
{
    int i;
    struct cache_entry *ce;

    for (i = 0; i < istate->cache_nr; ++i) {
        ce = istate->cache[i];
        if (S_ISDIR(ce->ce_mode) || (ce->ce_flags & CE_REMOVE))
            continue;
        if (!ce->modifier) {
            seaf_warning ("BUG: index entry %s doesn't have modifier info.\n",
                       ce->name);
            return -1;
        }
        g_string_append_printf (buf, "%s\n", ce->modifier);
    }

    return 0;
}
