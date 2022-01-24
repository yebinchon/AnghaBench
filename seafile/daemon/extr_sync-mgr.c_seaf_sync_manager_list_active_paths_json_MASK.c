#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
typedef  void* gpointer ;
struct TYPE_7__ {int /*<<< orphan*/  paths; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  paths_lock; int /*<<< orphan*/  active_paths; } ;
typedef  TYPE_2__ SeafSyncManager ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  TYPE_3__ ActivePathsInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void**,void**) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

char *
FUNC14 (SeafSyncManager *mgr)
{
    json_t *array = NULL, *obj = NULL, *path_array = NULL;
    GHashTableIter iter;
    gpointer key, value;
    char *repo_id;
    ActivePathsInfo *info;
    char *ret = NULL;

    FUNC11 (&mgr->priv->paths_lock);

    array = FUNC4 ();

    FUNC2 (&iter, mgr->priv->active_paths);
    while (FUNC3 (&iter, &key, &value)) {
        repo_id = key;
        info = value;

        obj = FUNC8();
        path_array = FUNC1 (info->paths);
        FUNC9 (obj, "repo_id", FUNC10(repo_id));
        FUNC9 (obj, "paths", path_array);

        FUNC5 (array, obj);
    }

    FUNC12 (&mgr->priv->paths_lock);

    ret = FUNC7 (array, FUNC0(4));
    if (!ret) {
        FUNC13 ("Failed to convert active paths to json\n");
    }

    FUNC6 (array);

    return ret;
}