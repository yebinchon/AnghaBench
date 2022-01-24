#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ sds ;
typedef  scalar_t__ off_t ;
struct TYPE_4__ {TYPE_1__* cluster; int /*<<< orphan*/  cluster_configfile; } ;
struct TYPE_3__ {int /*<<< orphan*/  todo_before_sleep; scalar_t__ lastVoteEpoch; scalar_t__ currentEpoch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_NODE_HANDSHAKE ; 
 int /*<<< orphan*/  CLUSTER_TODO_FSYNC_CONFIG ; 
 int /*<<< orphan*/  CLUSTER_TODO_SAVE_CONFIG ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (scalar_t__,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 size_t FUNC10 (scalar_t__) ; 
 TYPE_2__ server ; 
 scalar_t__ FUNC11 (int,scalar_t__,size_t) ; 

int FUNC12(int do_fsync) {
    sds ci;
    size_t content_size;
    struct stat sb;
    int fd;

    server.cluster->todo_before_sleep &= ~CLUSTER_TODO_SAVE_CONFIG;

    /* Get the nodes description and concatenate our "vars" directive to
     * save currentEpoch and lastVoteEpoch. */
    ci = FUNC1(CLUSTER_NODE_HANDSHAKE);
    ci = FUNC7(ci,"vars currentEpoch %llu lastVoteEpoch %llu\n",
        (unsigned long long) server.cluster->currentEpoch,
        (unsigned long long) server.cluster->lastVoteEpoch);
    content_size = FUNC10(ci);

    if ((fd = FUNC6(server.cluster_configfile,O_WRONLY|O_CREAT,0644))
        == -1) goto err;

    /* Pad the new payload if the existing file length is greater. */
    if (FUNC2(fd,&sb) != -1) {
        if (sb.st_size > (off_t)content_size) {
            ci = FUNC9(ci,sb.st_size);
            FUNC5(ci+content_size,'\n',sb.st_size-content_size);
        }
    }
    if (FUNC11(fd,ci,FUNC10(ci)) != (ssize_t)FUNC10(ci)) goto err;
    if (do_fsync) {
        server.cluster->todo_before_sleep &= ~CLUSTER_TODO_FSYNC_CONFIG;
        FUNC3(fd);
    }

    /* Truncate the file if needed to remove the final \n padding that
     * is just garbage. */
    if (content_size != FUNC10(ci) && FUNC4(fd,content_size) == -1) {
        /* ftruncate() failing is not a critical error. */
    }
    FUNC0(fd);
    FUNC8(ci);
    return 0;

err:
    if (fd != -1) FUNC0(fd);
    FUNC8(ci);
    return -1;
}