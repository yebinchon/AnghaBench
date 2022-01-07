
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_7__ {scalar_t__ NextEntryOffset; } ;
struct TYPE_6__ {int worktree; } ;
typedef TYPE_1__ RepoWatchInfo ;
typedef TYPE_2__* PFILE_NOTIFY_INFORMATION ;


 int TRUE ;
 int process_one_event (TYPE_1__*,int ,TYPE_2__*,int) ;

__attribute__((used)) static gboolean
process_events (const char *repo_id, RepoWatchInfo *info,
                char *event_buf, unsigned int buf_size)
{
    PFILE_NOTIFY_INFORMATION event;

    int offset = 0;
    while (1) {
        event = (PFILE_NOTIFY_INFORMATION)&event_buf[offset];
        offset += event->NextEntryOffset;

        process_one_event (info, info->worktree,
                           event, (event->NextEntryOffset == 0));

        if (!event->NextEntryOffset)
            break;
    }

    return TRUE;
}
