#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  gint ;
struct TYPE_5__ {int /*<<< orphan*/  last_changed; } ;
typedef  TYPE_1__ WTStatus ;
struct TYPE_6__ {TYPE_1__* status; } ;
typedef  TYPE_2__ RepoWatchInfo ;
typedef  int /*<<< orphan*/  FSEventStreamEventId ;
typedef  int FSEventStreamEventFlags ;

/* Variables and functions */
 int /*<<< orphan*/  G_NORMALIZE_NFC ; 
 int /*<<< orphan*/  WT_EVENT_CREATE_OR_UPDATE ; 
 int /*<<< orphan*/  WT_EVENT_DELETE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 int const kFSEventStreamEventFlagItemCreated ; 
 int const kFSEventStreamEventFlagItemModified ; 
 int const kFSEventStreamEventFlagItemRemoved ; 
 int const kFSEventStreamEventFlagItemRenamed ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char const*,struct stat*) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (const char* eventPath,
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

    event_path_nfc = FUNC4 (eventPath, -1, G_NORMALIZE_NFC);

    tmp = event_path_nfc + FUNC7(worktree);
    if (*tmp == '/')
        tmp++;
    filename = FUNC3(tmp);
    FUNC2 (event_path_nfc);

    /* Path for folder returned from system may contain a '/' at the end. */
    int len = FUNC7(filename);
    if (len > 0 && filename[len - 1] == '/')
        filename[len - 1] = 0;

    /* Reinterpreted RENAMED as combine of CREATED or DELETED event */
    if (eventFlags & kFSEventStreamEventFlagItemRenamed) {
        FUNC5 ("Rename flag set for %s \n", filename);
        if (FUNC6 (eventPath, &buf) < 0) {
            /* ret = -1, file is gone */
            FUNC0 (status, WT_EVENT_DELETE, filename, NULL);
        } else {
            /* ret = 0, file is here, but rename behaviour is unknown to us */
            FUNC0 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
        }
    }

    if (eventFlags & kFSEventStreamEventFlagItemRemoved) {
        FUNC5 ("Deleted flag set for %s.\n", filename);
        if (FUNC6 (eventPath, &buf) < 0) {
            FUNC0 (status, WT_EVENT_DELETE, filename, NULL);
        }
    }

    if (eventFlags & kFSEventStreamEventFlagItemModified) {
        FUNC5 ("Modified flag set for %s.\n", filename);
        if (FUNC6 (eventPath, &buf) == 0) {
            FUNC0 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
        }
    }

    if (eventFlags & kFSEventStreamEventFlagItemCreated) {
        FUNC5 ("Created flag set for %s.\n", filename);
         /**
          * no need to rechecking recursively in FSEventStream
          *
          * these flags are useful if necessary:
          * kFSEventStreamEventFlagItemIsFile
          * kFSEventStreamEventFlagItemIsDir
          * kFSEventStreamEventFlagItemIsSymlink
          */
        if (FUNC6 (eventPath, &buf) == 0) {
            FUNC0 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
        }
    }

    FUNC2 (filename);
    FUNC1 (&info->status->last_changed, (gint)FUNC8(NULL));
}