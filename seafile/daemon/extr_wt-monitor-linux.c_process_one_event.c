
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct inotify_event {int mask; char* name; } ;
typedef int gint ;
typedef scalar_t__ gboolean ;
struct TYPE_7__ {int last_changed; } ;
typedef TYPE_1__ WTStatus ;
struct TYPE_8__ {TYPE_1__* status; } ;
typedef TYPE_2__ RepoWatchInfo ;


 scalar_t__ FALSE ;
 int IN_ATTRIB ;
 int IN_CLOSE_WRITE ;
 int IN_CREATE ;
 int IN_DELETE ;
 int IN_IGNORED ;
 int IN_MODIFY ;
 int IN_Q_OVERFLOW ;
 int IN_UNMOUNT ;
 int S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 scalar_t__ TRUE ;
 int WT_EVENT_ATTRIB ;
 int WT_EVENT_CREATE_OR_UPDATE ;
 int WT_EVENT_DELETE ;
 int WT_EVENT_OVERFLOW ;
 int add_event_to_queue (TYPE_1__*,int ,char*,int *) ;
 int add_watch_recursive (TYPE_2__*,int,char const*,char*,scalar_t__) ;
 int g_atomic_int_set (int *,int ) ;
 char* g_build_filename (char const*,char*,int *) ;
 int g_free (char*) ;
 int handle_rename (int,TYPE_2__*,struct inotify_event*,char const*,char*,scalar_t__) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int seaf_debug (char*,char*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
process_one_event (int in_fd,
                   RepoWatchInfo *info,
                   const char *worktree,
                   const char *parent,
                   struct inotify_event *event,
                   gboolean last_event)
{
    WTStatus *status = info->status;
    char *filename;
    gboolean update_last_changed = TRUE;
    gboolean add_to_queue = TRUE;


    if ((event->mask & IN_IGNORED) || (event->mask & IN_UNMOUNT))
        return;


    if (event->mask & IN_Q_OVERFLOW) {
        add_event_to_queue (status, WT_EVENT_OVERFLOW, ((void*)0), ((void*)0));
        return;
    }




    filename = g_build_filename (parent, event->name, ((void*)0));

    handle_rename (in_fd, info, event, worktree, filename, last_event);

    if (event->mask & IN_MODIFY) {
        seaf_debug ("Modified %s.\n", filename);
        if (add_to_queue)
            add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
    } else if (event->mask & IN_CREATE) {
        seaf_debug ("Created %s.\n", filename);
        char *fullpath = g_build_filename (worktree, filename, ((void*)0));
        struct stat st;
        if (lstat (fullpath, &st) < 0 ||
            (!S_ISDIR(st.st_mode) && !S_ISLNK(st.st_mode))) {
            g_free (fullpath);
            update_last_changed = FALSE;
            goto out;
        }
        g_free (fullpath);







        add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
        add_watch_recursive (info, in_fd, worktree, filename, FALSE);
    } else if (event->mask & IN_DELETE) {
        seaf_debug ("Deleted %s.\n", filename);
        add_event_to_queue (status, WT_EVENT_DELETE, filename, ((void*)0));
    } else if (event->mask & IN_CLOSE_WRITE) {
        seaf_debug ("Close write %s.\n", filename);
        if (add_to_queue)
            add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
    } else if (event->mask & IN_ATTRIB) {
        seaf_debug ("Attribute changed %s.\n", filename);
        add_event_to_queue (status, WT_EVENT_ATTRIB, filename, ((void*)0));
    }

out:
    g_free (filename);
    if (update_last_changed)
        g_atomic_int_set (&info->status->last_changed, (gint)time(((void*)0)));
}
