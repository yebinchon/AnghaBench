
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gpointer ;
struct TYPE_8__ {int worktree; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int info_hash; } ;
typedef TYPE_1__ SeafWTMonitorPriv ;
typedef TYPE_2__ SeafWTMonitor ;
typedef TYPE_3__ RepoWatchInfo ;
typedef int FSEventStreamEventId ;
typedef int FSEventStreamEventFlags ;
typedef scalar_t__ ConstFSEventStreamRef ;


 scalar_t__ CFRunLoopGetCurrent () ;
 TYPE_3__* g_hash_table_lookup (int ,int ) ;
 int process_one_event (char*,TYPE_3__*,int ,int const,int const) ;
 int seaf_debug (char*,long,int const,char*,int const) ;
 int seaf_warning (char*) ;

__attribute__((used)) static void
stream_callback (ConstFSEventStreamRef streamRef,
                      void *clientCallBackInfo,
                      size_t numEvents,
                      void *eventPaths,
                      const FSEventStreamEventFlags eventFlags[],
                      const FSEventStreamEventId eventIds[])
{
    RepoWatchInfo *info;
    SeafWTMonitor *monitor = (SeafWTMonitor *)clientCallBackInfo;
    SeafWTMonitorPriv *priv = monitor->priv;
    char **paths = (char **)eventPaths;

    info = g_hash_table_lookup (priv->info_hash, (gpointer)(long)streamRef);
    if (!info) {
        seaf_warning ("Repo watch info not found.\n");
        return;
    }

    int i;
    for (i = 0; i < numEvents; i++) {
        seaf_debug("%ld Change %llu in %s, flags %x\n", (long)CFRunLoopGetCurrent(),
                   eventIds[i], paths[i], eventFlags[i]);
        process_one_event (paths[i], info, info->worktree,
                           eventIds[i], eventFlags[i]);
    }
}
