
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int name; int ce_flags; } ;


 int g_free (char*) ;
 char* g_strconcat (int ,char*,int *) ;
 int index_name_pos (struct index_state*,int ,int ) ;
 int strlen (int ) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int is_garbage_empty_dir (struct index_state *istate, struct cache_entry *ce)
{
    int ret = 0;
    int pos = index_name_pos (istate, ce->name, ce->ce_flags);


    if (pos >= 0)
        return 0;




    pos = -pos-1;

    struct cache_entry *next;
    char *dir_name = g_strconcat (ce->name, "/", ((void*)0));
    int this_len = strlen (ce->name) + 1;
    while (pos < istate->cache_nr) {
        next = istate->cache[pos];
        int rc = strncmp (next->name, dir_name, this_len);
        if (rc == 0) {
            ret = 1;
            break;
        } else if (rc < 0) {
            ++pos;
        } else
            break;
    }

    g_free (dir_name);
    return ret;
}
