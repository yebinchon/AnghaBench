#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_14__ {scalar_t__ version; int /*<<< orphan*/  id; } ;
struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  repo_hash; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* seaf ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9 (SeafRepoManager *mgr,
                            SeafRepo *repo)
{
    FUNC6 (mgr, repo->id,
                                          (repo->version > 0) ? TRUE : FALSE);

    FUNC7 (seaf->sync_mgr, repo->id);

    FUNC4 (mgr, repo->id);

    FUNC1 (mgr, repo);

    if (FUNC3 (&mgr->priv->lock) < 0) {
        FUNC8 ("[repo mgr] failed to lock repo cache.\n");
        return -1;
    }

    FUNC0 (mgr->priv->repo_hash, repo->id);

    FUNC2 (&mgr->priv->lock);

    FUNC5 (repo);

    return 0;
}