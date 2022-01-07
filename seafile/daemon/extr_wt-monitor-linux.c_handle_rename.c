
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inotify_event {int mask; scalar_t__ cookie; int name; } ;
typedef int gboolean ;
typedef int WTStatus ;
struct TYPE_8__ {char const* old_path; scalar_t__ last_cookie; int processing; } ;
struct TYPE_7__ {TYPE_2__* rename_info; int * status; } ;
typedef TYPE_1__ RepoWatchInfo ;
typedef TYPE_2__ RenameInfo ;


 int FALSE ;
 int IN_MOVED_FROM ;
 int IN_MOVED_TO ;
 int WT_EVENT_CREATE_OR_UPDATE ;
 int WT_EVENT_DELETE ;
 int WT_EVENT_RENAME ;
 int add_event_to_queue (int *,int ,char const*,char const*) ;
 int add_watch_recursive (TYPE_1__*,int,char const*,char const*,int ) ;
 int g_free (char const*) ;
 char const* g_strdup (char const*) ;
 int seaf_debug (char*,scalar_t__,int ) ;
 int set_rename_processing_state (TYPE_2__*,scalar_t__,char const*) ;
 int unset_rename_processing_state (TYPE_2__*) ;

__attribute__((used)) static void
handle_rename (int in_fd,
               RepoWatchInfo *info,
               struct inotify_event *event,
               const char *worktree,
               const char *filename,
               gboolean last_event)
{
    WTStatus *status = info->status;
    RenameInfo *rename_info = info->rename_info;

    if (event->mask & IN_MOVED_FROM)
        seaf_debug ("(%d) Move %s ->\n", event->cookie, event->name);
    else if (event->mask & IN_MOVED_TO)
        seaf_debug ("(%d) Move -> %s.\n", event->cookie, event->name);

    if (!rename_info->processing) {
        if (event->mask & IN_MOVED_FROM) {
            if (!last_event) {
                set_rename_processing_state (rename_info, event->cookie, filename);
            } else {




                add_event_to_queue (status, WT_EVENT_DELETE, filename, ((void*)0));
            }
        } else if (event->mask & IN_MOVED_TO) {


            add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
            add_watch_recursive (info, in_fd, worktree, filename, FALSE);
        }
    } else {
        if (event->mask & IN_MOVED_FROM) {



            add_event_to_queue (status, WT_EVENT_DELETE, rename_info->old_path, ((void*)0));

            if (!last_event) {

                rename_info->last_cookie = event->cookie;
                g_free (rename_info->old_path);
                rename_info->old_path = g_strdup(filename);
            } else {

                add_event_to_queue (status, WT_EVENT_DELETE, filename, ((void*)0));
                unset_rename_processing_state (rename_info);
            }
        } else if (event->mask & IN_MOVED_TO) {
            if (event->cookie == rename_info->last_cookie) {

                add_event_to_queue (status, WT_EVENT_RENAME,
                                    rename_info->old_path, filename);
            } else {



                add_event_to_queue (status, WT_EVENT_DELETE,
                                    rename_info->old_path, ((void*)0));
                add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE,
                                    filename, ((void*)0));
            }

            add_watch_recursive (info, in_fd, worktree, filename, FALSE);
            unset_rename_processing_state (rename_info);
        } else {



            add_event_to_queue (status, WT_EVENT_DELETE, rename_info->old_path, ((void*)0));
            unset_rename_processing_state (rename_info);
        }
    }
}
