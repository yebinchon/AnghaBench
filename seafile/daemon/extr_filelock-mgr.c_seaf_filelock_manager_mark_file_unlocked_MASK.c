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
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  repo_locked_files; } ;
typedef  TYPE_2__ SeafFilelockManager ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int FUNC5 (TYPE_2__*,char const*,char const*) ; 

int
FUNC6 (SeafFilelockManager *mgr,
                                          const char *repo_id,
                                          const char *path)
{
    GHashTable *locks;

    FUNC2 (&mgr->priv->hash_lock);

    locks = FUNC0 (mgr->priv->repo_locked_files, repo_id);
    if (!locks) {
        FUNC3 (&mgr->priv->hash_lock);
        return 0;
    }

    FUNC1 (locks, path);

    FUNC3 (&mgr->priv->hash_lock);

#ifdef WIN32
    refresh_locked_path_status (repo_id, path);
#endif

    return FUNC5 (mgr, repo_id, path);
}