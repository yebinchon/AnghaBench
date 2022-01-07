
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int ce_flags; int name; } ;
typedef int SeafStat ;


 int ADD_CACHE_OK_TO_ADD ;
 int ADD_CACHE_OK_TO_REPLACE ;
 int CE_ADDED ;
 scalar_t__ add_index_entry (struct index_state*,struct cache_entry*,int) ;
 int ce_namelen (struct cache_entry*) ;
 struct cache_entry* create_empty_dir_index_entry (char const*,int *) ;
 int free (struct cache_entry*) ;
 struct cache_entry* index_name_exists (struct index_state*,int ,int ,int) ;
 scalar_t__ is_garbage_empty_dir (struct index_state*,struct cache_entry*) ;
 int remove_file_from_index (struct index_state*,int ) ;
 int seaf_warning (char*,char const*) ;

int
add_empty_dir_to_index (struct index_state *istate, const char *path, SeafStat *st)
{
    struct cache_entry *ce, *alias;
    int add_option = (ADD_CACHE_OK_TO_ADD|ADD_CACHE_OK_TO_REPLACE);

    ce = create_empty_dir_index_entry (path, st);

    if (is_garbage_empty_dir (istate, ce)) {
        free (ce);
        return 0;
    }

    alias = index_name_exists(istate, ce->name, ce_namelen(ce), 0);
    if (alias) {
        free (ce);
        return 0;
    } else {
    }

    ce->ce_flags |= CE_ADDED;

    if (add_index_entry(istate, ce, add_option)) {
        seaf_warning("unable to add %s to index\n",path);
        free (ce);
        return -1;
    }

    return 1;
}
