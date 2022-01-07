
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int cache_nr; TYPE_1__** cache; } ;
struct TYPE_2__ {int name; } ;


 int index_name_pos (struct index_state*,char const*,int ) ;
 int remove_index_entry_at (struct index_state*,int) ;
 int strcmp (int ,char const*) ;
 int strlen (char const*) ;

int remove_file_from_index(struct index_state *istate, const char *path)
{
    int pos = index_name_pos(istate, path, strlen(path));
    if (pos < 0)
        pos = -pos-1;

    while (pos < istate->cache_nr && !strcmp(istate->cache[pos]->name, path))
        remove_index_entry_at(istate, pos);
    return 0;
}
