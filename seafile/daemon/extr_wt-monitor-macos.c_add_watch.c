
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct FSEventStreamContext {int * member_4; int * member_3; int * member_2; TYPE_3__* member_1; int member_0; } ;
typedef TYPE_1__* gpointer ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {int hash_lock; int info_hash; int handle_hash; } ;
struct TYPE_10__ {int status; } ;
typedef TYPE_2__ SeafWTMonitorPriv ;
typedef TYPE_3__ SeafWTMonitor ;
typedef TYPE_1__ RepoWatchInfo ;
typedef scalar_t__ FSEventStreamRef ;
typedef int CFStringRef ;
typedef int CFArrayRef ;


 int CFArrayCreate (int *,void const**,int,int *) ;
 int CFRelease (int ) ;
 int CFRunLoopGetCurrent () ;
 int CFStringCreateWithCString (int ,char*,int ) ;
 scalar_t__ FSEventStreamCreate (int ,int ,struct FSEventStreamContext*,int ,int ,double,int ) ;
 int FSEventStreamScheduleWithRunLoop (scalar_t__,int ,int ) ;
 int FSEventStreamStart (scalar_t__) ;
 int G_NORMALIZE_NFD ;
 int WT_EVENT_SCAN_DIR ;
 int add_event_to_queue (int ,int ,char*,int *) ;
 TYPE_1__* create_repo_watch_info (char const*,char const*) ;
 int g_free (char*) ;
 int g_hash_table_insert (int ,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* g_strdup (char const*) ;
 char* g_utf8_normalize (char const*,int,int ) ;
 int kCFAllocatorDefault ;
 int kCFRunLoopDefaultMode ;
 int kCFStringEncodingUTF8 ;
 int kFSEventStreamCreateFlagFileEvents ;
 int kFSEventStreamEventIdSinceNow ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int seaf_debug (char*,char const*,char const*) ;
 int seaf_warning (char*) ;
 int stream_callback ;

__attribute__((used)) static FSEventStreamRef
add_watch (SeafWTMonitor *monitor, const char* repo_id, const char* worktree)
{
    SeafWTMonitorPriv *priv = monitor->priv;
    RepoWatchInfo *info;
    double latency = 0.25;

    char *worktree_nfd = g_utf8_normalize (worktree, -1, G_NORMALIZE_NFD);

    CFStringRef mypaths[1];
    mypaths[0] = CFStringCreateWithCString (kCFAllocatorDefault,
                                            worktree_nfd, kCFStringEncodingUTF8);
    g_free (worktree_nfd);
    CFArrayRef pathsToWatch = CFArrayCreate(((void*)0), (const void **)mypaths, 1, ((void*)0));
    FSEventStreamRef stream;




    struct FSEventStreamContext ctx = {0, monitor, ((void*)0), ((void*)0), ((void*)0)};
    stream = FSEventStreamCreate(kCFAllocatorDefault,
                                 stream_callback,
                                 &ctx,
                                 pathsToWatch,
                                 kFSEventStreamEventIdSinceNow,
                                 latency,
                                 kFSEventStreamCreateFlagFileEvents
                                 );

    CFRelease (mypaths[0]);
    CFRelease (pathsToWatch);

    if (!stream) {
        seaf_warning ("[wt] Failed to create event stream.\n");
        return stream;
    }

    FSEventStreamScheduleWithRunLoop(stream, CFRunLoopGetCurrent(), kCFRunLoopDefaultMode);
    FSEventStreamStart (stream);

    seaf_debug ("[wt mon] Add repo %s watch success: %s.\n", repo_id, worktree);

    pthread_mutex_lock (&priv->hash_lock);
    g_hash_table_insert (priv->handle_hash,
                         g_strdup(repo_id), (gpointer)(long)stream);

    info = create_repo_watch_info (repo_id, worktree);
    g_hash_table_insert (priv->info_hash, (gpointer)(long)stream, info);
    pthread_mutex_unlock (&priv->hash_lock);


    add_event_to_queue (info->status, WT_EVENT_SCAN_DIR, "", ((void*)0));
    return stream;
}
