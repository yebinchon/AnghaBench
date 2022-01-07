
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct dirent {char const* d_name; scalar_t__ d_type; } ;
typedef scalar_t__ gboolean ;
struct TYPE_6__ {int status; int mapping; } ;
struct TYPE_5__ {int st_mode; } ;
typedef TYPE_1__ SeafStat ;
typedef TYPE_2__ RepoWatchInfo ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 scalar_t__ DT_LNK ;
 scalar_t__ DT_REG ;
 scalar_t__ DT_UNKNOWN ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ WATCH_MASK ;
 int WT_EVENT_CREATE_OR_UPDATE ;
 int add_event_to_queue (int ,int ,char const*,int *) ;
 int add_mapping (int ,char const*,int) ;
 int closedir (int *) ;
 int errno ;
 char* g_build_filename (char const*,char const*,int *) ;
 int g_free (char*) ;
 int inotify_add_watch (int,char*,int ) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int seaf_debug (char*,char*) ;
 int seaf_warning (char*,char*,int ) ;
 scalar_t__ stat (char*,TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strerror (int ) ;

__attribute__((used)) static int
add_watch_recursive (RepoWatchInfo *info,
                     int in_fd,
                     const char *worktree,
                     const char *path,
                     gboolean add_events)
{
    char *full_path;
    SeafStat st;
    DIR *dir;
    struct dirent *dent;
    int wd;

    full_path = g_build_filename (worktree, path, ((void*)0));

    if (stat (full_path, &st) < 0) {
        seaf_warning ("[wt mon] fail to stat %s: %s\n", full_path, strerror(errno));
        goto out;
    }

    if (add_events && path[0] != 0)
        add_event_to_queue (info->status, WT_EVENT_CREATE_OR_UPDATE,
                            path, ((void*)0));

    if (S_ISDIR (st.st_mode)) {
        seaf_debug ("Watching %s.\n", full_path);

        wd = inotify_add_watch (in_fd, full_path, (uint32_t)WATCH_MASK);
        if (wd < 0) {
            seaf_warning ("[wt mon] fail to add watch to %s: %s.\n",
                          full_path, strerror(errno));
            goto out;
        }

        add_mapping (info->mapping, path, wd);

        dir = opendir (full_path);
        if (!dir) {
            seaf_warning ("[wt mon] fail to open dir %s: %s.\n",
                          full_path, strerror(errno));
            goto out;
        }

        while (1) {
            dent = readdir (dir);
            if (!dent)
                break;
            if (strcmp (dent->d_name, ".") == 0 ||
                strcmp (dent->d_name, "..") == 0)
                continue;

            char *sub_path = g_build_filename (path, dent->d_name, ((void*)0));





            if (dent->d_type == DT_DIR || dent->d_type == DT_LNK ||
                dent->d_type == DT_UNKNOWN)
                add_watch_recursive (info, in_fd, worktree, sub_path, add_events);

            if (dent->d_type == DT_REG && add_events)
                add_event_to_queue (info->status, WT_EVENT_CREATE_OR_UPDATE,
                                    sub_path, ((void*)0));
            g_free (sub_path);
        }

        closedir (dir);
    }

out:
    g_free (full_path);
    return 0;
}
