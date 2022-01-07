
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int gint ;
typedef int gboolean ;
struct TYPE_13__ {int last_changed; } ;
typedef TYPE_1__ WTStatus ;
struct TYPE_16__ {scalar_t__ Action; int FileNameLength; int FileName; } ;
struct TYPE_15__ {TYPE_1__* status; } ;
struct TYPE_14__ {int st_mode; } ;
typedef TYPE_2__ SeafStat ;
typedef TYPE_3__ RepoWatchInfo ;
typedef TYPE_4__* PFILE_NOTIFY_INFORMATION ;


 int FALSE ;
 scalar_t__ FILE_ACTION_ADDED ;
 scalar_t__ FILE_ACTION_MODIFIED ;
 scalar_t__ FILE_ACTION_REMOVED ;
 scalar_t__ FILE_ACTION_RENAMED_OLD_NAME ;
 scalar_t__ S_ISDIR (int ) ;
 int TRUE ;
 int WT_EVENT_CREATE_OR_UPDATE ;
 int WT_EVENT_DELETE ;
 int add_event_to_queue (TYPE_1__*,int ,char*,int *) ;
 char* convert_to_unix_path (char const*,int ,int ,int) ;
 int g_atomic_int_set (int *,int ) ;
 char* g_build_filename (char const*,char*,int *) ;
 int g_free (char*) ;
 scalar_t__ handle_consecutive_duplicate_event (TYPE_3__*,TYPE_4__*) ;
 int handle_rename (TYPE_3__*,TYPE_4__*,char const*,char*,int) ;
 int seaf_debug (char*,char*) ;
 int seaf_stat (char*,TYPE_2__*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
process_one_event (RepoWatchInfo *info,
                   const char *worktree,
                   PFILE_NOTIFY_INFORMATION event,
                   gboolean last_event)
{
    WTStatus *status = info->status;
    char *filename;
    gboolean add_to_queue = TRUE;






    gboolean convert_long_path = !(event->Action == FILE_ACTION_RENAMED_OLD_NAME ||
                                   event->Action == FILE_ACTION_REMOVED);
    filename = convert_to_unix_path (worktree, event->FileName, event->FileNameLength,
                                     convert_long_path);
    if (!filename)
        goto out;

    handle_rename (info, event, worktree, filename, last_event);

    if (event->Action == FILE_ACTION_MODIFIED) {
        seaf_debug ("Modified %s.\n", filename);


        char *full_path = g_build_filename (worktree, filename, ((void*)0));
        SeafStat st;
        int rc = seaf_stat (full_path, &st);
        if (rc < 0 || S_ISDIR(st.st_mode)) {
            g_free (full_path);
            goto out;
        }
        g_free (full_path);

        if (add_to_queue)
            add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
    } else if (event->Action == FILE_ACTION_ADDED) {
        seaf_debug ("Created %s.\n", filename);
        add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
    } else if (event->Action == FILE_ACTION_REMOVED) {
        seaf_debug ("Deleted %s.\n", filename);
        add_event_to_queue (status, WT_EVENT_DELETE, filename, ((void*)0));
    }

out:
    g_free (filename);
    g_atomic_int_set (&info->status->last_changed, (gint)time(((void*)0)));

}
