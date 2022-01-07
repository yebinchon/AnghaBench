
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int gboolean ;
typedef int WTStatus ;
struct TYPE_10__ {scalar_t__ Action; } ;
struct TYPE_9__ {int old_path; int processing; } ;
struct TYPE_8__ {TYPE_2__* rename_info; int * status; } ;
typedef TYPE_1__ RepoWatchInfo ;
typedef TYPE_2__ RenameInfo ;
typedef TYPE_3__* PFILE_NOTIFY_INFORMATION ;


 scalar_t__ FILE_ACTION_RENAMED_NEW_NAME ;
 scalar_t__ FILE_ACTION_RENAMED_OLD_NAME ;
 int WT_EVENT_RENAME ;
 int add_event_to_queue (int *,int ,int ,char const*) ;
 int seaf_debug (char*,char const*) ;
 int set_rename_processing_state (TYPE_2__*,char const*) ;
 int unset_rename_processing_state (TYPE_2__*) ;

__attribute__((used)) static void
handle_rename (RepoWatchInfo *info,
               PFILE_NOTIFY_INFORMATION event,
               const char *worktree,
               const char *filename,
               gboolean last_event)
{
    WTStatus *status = info->status;
    RenameInfo *rename_info = info->rename_info;

    if (event->Action == FILE_ACTION_RENAMED_OLD_NAME)
        seaf_debug ("Move %s ->\n", filename);
    else if (event->Action == FILE_ACTION_RENAMED_NEW_NAME)
        seaf_debug ("Move -> %s.\n", filename);

    if (!rename_info->processing) {
        if (event->Action == FILE_ACTION_RENAMED_OLD_NAME) {
            if (!last_event) {
                set_rename_processing_state (rename_info, filename);
            } else {



            }
        }
    } else {
        if (event->Action == FILE_ACTION_RENAMED_NEW_NAME) {

            add_event_to_queue (status, WT_EVENT_RENAME,
                                rename_info->old_path, filename);
            unset_rename_processing_state (rename_info);
        }
    }
}
