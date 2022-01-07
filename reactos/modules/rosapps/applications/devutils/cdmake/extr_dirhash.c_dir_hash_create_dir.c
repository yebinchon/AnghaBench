
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_dir_entry {char* case_name; size_t hashcode; struct target_dir_entry* next_dir_hash_entry; struct target_dir_entry* child; struct target_dir_entry* next; void* normalized_name; struct target_dir_entry* parent; } ;
struct target_dir_hash {struct target_dir_entry** buckets; struct target_dir_entry root; } ;


 size_t NUM_DIR_HASH_BUCKETS ;
 struct target_dir_entry* calloc (int,int) ;
 void* djb_hash (char const*) ;
 int free (char*) ;
 struct target_dir_entry* get_entry_by_normname (struct target_dir_hash*,char const*) ;
 int split_path (char const*,char**,char**) ;
 void* strdup (char const*) ;

struct target_dir_entry *
dir_hash_create_dir(struct target_dir_hash *dh, const char *casename, const char *targetnorm)
{
    struct target_dir_entry *de, *parent_de;
    char *parentcase = ((void*)0);
    char *case_name = ((void*)0);
    char *parentname = ((void*)0);
    struct target_dir_entry **ent;

    if (!dh->root.normalized_name)
    {
        dh->root.normalized_name = strdup("");
        dh->root.case_name = strdup("");
        dh->root.hashcode = djb_hash("");
        dh->buckets[dh->root.hashcode % NUM_DIR_HASH_BUCKETS] = &dh->root;
    }


    de = get_entry_by_normname(dh, targetnorm);
    if (de)
        return de;
    split_path(casename, &parentcase, &case_name);
    split_path(targetnorm, &parentname, ((void*)0));
    parent_de = dir_hash_create_dir(dh, parentcase, parentname);
    free(parentname);
    free(parentcase);


    if (!*case_name)
    {
        free(case_name);
        return parent_de;
    }


    de = calloc(1, sizeof(*de));
    de->parent = parent_de;
    de->normalized_name = strdup(targetnorm);
    de->case_name = case_name;
    de->hashcode = djb_hash(targetnorm);

    de->next = parent_de->child;
    parent_de->child = de;

    ent = &dh->buckets[de->hashcode % NUM_DIR_HASH_BUCKETS];
    while (*ent)
        ent = &(*ent)->next_dir_hash_entry;
    *ent = de;

    return de;
}
