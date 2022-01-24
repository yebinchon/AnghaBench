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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/ * lock_office_job_queue; } ;
typedef  TYPE_2__ SeafRepoManager ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  cleanup_deleted_stores ; 
 int /*<<< orphan*/  lock_office_file_worker ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int
FUNC6 (SeafRepoManager *mgr)
{
    pthread_t tid;
    pthread_attr_t attr;
    FUNC0(&attr);
    FUNC1(&attr, PTHREAD_CREATE_DETACHED);
    int rc;

    FUNC5 (mgr);

    rc = FUNC2 (&tid, &attr, cleanup_deleted_stores, NULL);
    if (rc != 0) {
        FUNC3 ("Failed to start cleanup thread: %s\n", FUNC4(rc));
    }

#if defined WIN32 || defined __APPLE__
    rc = pthread_create (&tid, &attr, lock_office_file_worker,
                         mgr->priv->lock_office_job_queue);
    if (rc != 0) {
        seaf_warning ("Failed to start lock office file thread: %s\n", strerror(rc));
    }
#endif

    return 0;
}