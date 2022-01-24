#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct FSEventStreamContext {int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; TYPE_3__* member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__* gpointer ;
struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  info_hash; int /*<<< orphan*/  handle_hash; } ;
struct TYPE_10__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ SeafWTMonitorPriv ;
typedef  TYPE_3__ SeafWTMonitor ;
typedef  TYPE_1__ RepoWatchInfo ;
typedef  scalar_t__ FSEventStreamRef ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  CFArrayRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct FSEventStreamContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  G_NORMALIZE_NFD ; 
 int /*<<< orphan*/  WT_EVENT_SCAN_DIR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC11 (char const*) ; 
 char* FUNC12 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFRunLoopDefaultMode ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 int /*<<< orphan*/  kFSEventStreamCreateFlagFileEvents ; 
 int /*<<< orphan*/  kFSEventStreamEventIdSinceNow ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  stream_callback ; 

__attribute__((used)) static FSEventStreamRef
FUNC17 (SeafWTMonitor *monitor, const char* repo_id, const char* worktree)
{
    SeafWTMonitorPriv *priv = monitor->priv;
    RepoWatchInfo *info;
    double latency = 0.25; /* unit: second */

    char *worktree_nfd = FUNC12 (worktree, -1, G_NORMALIZE_NFD);

    CFStringRef mypaths[1];
    mypaths[0] = FUNC3 (kCFAllocatorDefault,
                                            worktree_nfd, kCFStringEncodingUTF8);
    FUNC9 (worktree_nfd);
    CFArrayRef pathsToWatch = FUNC0(NULL, (const void **)mypaths, 1, NULL);
    FSEventStreamRef stream;

    /* Create the stream, passing in a callback */
    // kFSEventStreamCreateFlagFileEvents does not work for libraries with name
    // containing accent characters.
    struct FSEventStreamContext ctx = {0, monitor, NULL, NULL, NULL};
    stream = FUNC4(kCFAllocatorDefault,
                                 stream_callback,
                                 &ctx,
                                 pathsToWatch,
                                 kFSEventStreamEventIdSinceNow,
                                 latency,
                                 kFSEventStreamCreateFlagFileEvents
                                 );

    FUNC1 (mypaths[0]);
    FUNC1 (pathsToWatch);

    if (!stream) {
        FUNC16 ("[wt] Failed to create event stream.\n");
        return stream;
    }

    FUNC5(stream, FUNC2(), kCFRunLoopDefaultMode);
    FUNC6 (stream);
    /* FSEventStreamShow (stream); */
    FUNC15 ("[wt mon] Add repo %s watch success: %s.\n", repo_id, worktree);

    FUNC13 (&priv->hash_lock);
    FUNC10 (priv->handle_hash,
                         FUNC11(repo_id), (gpointer)(long)stream);

    info = FUNC8 (repo_id, worktree);
    FUNC10 (priv->info_hash, (gpointer)(long)stream, info);
    FUNC14 (&priv->hash_lock);

    /* A special event indicates repo-mgr to scan the whole worktree. */
    FUNC7 (info->status, WT_EVENT_SCAN_DIR, "", NULL);
    return stream;
}