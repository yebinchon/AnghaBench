
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int gint ;
struct TYPE_5__ {int last_changed; } ;
typedef TYPE_1__ WTStatus ;
struct TYPE_6__ {TYPE_1__* status; } ;
typedef TYPE_2__ RepoWatchInfo ;
typedef int FSEventStreamEventId ;
typedef int FSEventStreamEventFlags ;


 int G_NORMALIZE_NFC ;
 int WT_EVENT_CREATE_OR_UPDATE ;
 int WT_EVENT_DELETE ;
 int add_event_to_queue (TYPE_1__*,int ,char*,int *) ;
 int g_atomic_int_set (int *,int ) ;
 int g_free (char*) ;
 char* g_strdup (char const*) ;
 char* g_utf8_normalize (char const*,int,int ) ;
 int const kFSEventStreamEventFlagItemCreated ;
 int const kFSEventStreamEventFlagItemModified ;
 int const kFSEventStreamEventFlagItemRemoved ;
 int const kFSEventStreamEventFlagItemRenamed ;
 int seaf_debug (char*,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strlen (char const*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
process_one_event (const char* eventPath,
                   RepoWatchInfo *info,
                   const char *worktree,
                   const FSEventStreamEventId eventId,
                   const FSEventStreamEventFlags eventFlags)
{
    WTStatus *status = info->status;
    char *filename;
    char *event_path_nfc;
    const char *tmp;
    struct stat buf;

    event_path_nfc = g_utf8_normalize (eventPath, -1, G_NORMALIZE_NFC);

    tmp = event_path_nfc + strlen(worktree);
    if (*tmp == '/')
        tmp++;
    filename = g_strdup(tmp);
    g_free (event_path_nfc);


    int len = strlen(filename);
    if (len > 0 && filename[len - 1] == '/')
        filename[len - 1] = 0;


    if (eventFlags & kFSEventStreamEventFlagItemRenamed) {
        seaf_debug ("Rename flag set for %s \n", filename);
        if (stat (eventPath, &buf) < 0) {

            add_event_to_queue (status, WT_EVENT_DELETE, filename, ((void*)0));
        } else {

            add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
        }
    }

    if (eventFlags & kFSEventStreamEventFlagItemRemoved) {
        seaf_debug ("Deleted flag set for %s.\n", filename);
        if (stat (eventPath, &buf) < 0) {
            add_event_to_queue (status, WT_EVENT_DELETE, filename, ((void*)0));
        }
    }

    if (eventFlags & kFSEventStreamEventFlagItemModified) {
        seaf_debug ("Modified flag set for %s.\n", filename);
        if (stat (eventPath, &buf) == 0) {
            add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
        }
    }

    if (eventFlags & kFSEventStreamEventFlagItemCreated) {
        seaf_debug ("Created flag set for %s.\n", filename);
        if (stat (eventPath, &buf) == 0) {
            add_event_to_queue (status, WT_EVENT_CREATE_OR_UPDATE, filename, ((void*)0));
        }
    }

    g_free (filename);
    g_atomic_int_set (&info->status->last_changed, (gint)time(((void*)0)));
}
