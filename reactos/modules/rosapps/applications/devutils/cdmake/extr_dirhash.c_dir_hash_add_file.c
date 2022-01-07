
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_file {char* target_name; void* source_name; struct target_file* next; } ;
struct target_dir_hash {int dummy; } ;
struct target_dir_entry {struct target_file* head; } ;


 struct target_file* calloc (int,int) ;
 struct target_dir_entry* dir_hash_create_dir (struct target_dir_hash*,char*,char*) ;
 int free (char*) ;
 int normalize_dirname (char*) ;
 int split_path (char const*,char**,char**) ;
 void* strdup (char const*) ;

struct target_file *
dir_hash_add_file(struct target_dir_hash *dh, const char *source, const char *target)
{
    struct target_file *tf;
    struct target_dir_entry *de;
    char *targetdir = ((void*)0);
    char *targetfile = ((void*)0);
    char *targetnorm;


    split_path(target, &targetdir, &targetfile);
    if (!*targetfile)
    {
        free(targetdir);
        free(targetfile);
        return ((void*)0);
    }
    targetnorm = strdup(targetdir);
    normalize_dirname(targetnorm);
    de = dir_hash_create_dir(dh, targetdir, targetnorm);
    free(targetnorm);
    free(targetdir);


    tf = calloc(1, sizeof(*tf));
    tf->next = de->head;
    de->head = tf;
    tf->source_name = strdup(source);
    tf->target_name = targetfile;

    return tf;
}
