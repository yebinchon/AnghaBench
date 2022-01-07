
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dir_entry_t {int * path; int file; } ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_8__ {scalar_t__ n_dir_entries; int dir_entries; int * current_dir; int show_hidden_files; } ;
typedef TYPE_2__ intf_sys_t ;
typedef int DIR ;


 int DirsDestroy (TYPE_2__*) ;
 int IsFile (int *,char const*) ;
 int TAB_APPEND (scalar_t__,int ,struct dir_entry_t*) ;
 int closedir (int *) ;
 int comdir_entries ;
 int errno ;
 int free (struct dir_entry_t*) ;
 struct dir_entry_t* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Warn (TYPE_1__*,char*,int *,int ) ;
 int qsort (int ,scalar_t__,int,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * strdup (char const*) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_opendir (int *) ;
 char* vlc_readdir (int *) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static void ReadDir(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;

    if (!sys->current_dir || !*sys->current_dir) {
        msg_Dbg(intf, "no current dir set");
        return;
    }

    DIR *current_dir = vlc_opendir(sys->current_dir);
    if (!current_dir) {
        msg_Warn(intf, "cannot open directory `%s' (%s)", sys->current_dir,
                 vlc_strerror_c(errno));
        return;
    }

    DirsDestroy(sys);

    const char *entry;
    while ((entry = vlc_readdir(current_dir))) {
        if (!sys->show_hidden_files && *entry == '.' && strcmp(entry, ".."))
            continue;

        struct dir_entry_t *dir_entry = malloc(sizeof *dir_entry);
        if (unlikely(dir_entry == ((void*)0)))
            continue;

        dir_entry->file = IsFile(sys->current_dir, entry);
        dir_entry->path = strdup(entry);
        if (unlikely(dir_entry->path == ((void*)0)))
        {
            free(dir_entry);
            continue;
        }
        TAB_APPEND(sys->n_dir_entries, sys->dir_entries, dir_entry);
        continue;
    }

    closedir(current_dir);

    if (sys->n_dir_entries > 0)
        qsort(sys->dir_entries, sys->n_dir_entries,
              sizeof(struct dir_entry_t*), &comdir_entries);
}
