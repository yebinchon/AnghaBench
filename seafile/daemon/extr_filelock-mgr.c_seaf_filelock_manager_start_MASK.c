#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* gpointer ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  repo_locked_files; } ;
typedef  TYPE_2__ SeafFilelockManager ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void**,void**) ; 
 int /*<<< orphan*/  init_locks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5 (SeafFilelockManager *mgr)
{
    GHashTableIter iter;
    gpointer key, value;
    char *repo_id;
    GHashTable *locks;

    FUNC3 (&mgr->priv->hash_lock);

    FUNC1 (&iter, mgr->priv->repo_locked_files);
    while (FUNC2 (&iter, &key, &value)) {
        repo_id = key;
        locks = value;
        FUNC0 (locks, init_locks, repo_id);
    }

    FUNC4 (&mgr->priv->hash_lock);

    return 0;
}