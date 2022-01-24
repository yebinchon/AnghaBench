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
struct TYPE_12__ {char* data; struct TYPE_12__* next; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {int /*<<< orphan*/  perm_lock; void* group_perms; void* user_perms; int /*<<< orphan*/  repo_hash; } ;
typedef  TYPE_1__ SeafRepoManagerPriv ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FOLDER_PERM_TYPE_GROUP ; 
 int /*<<< orphan*/  FOLDER_PERM_TYPE_USER ; 
 int /*<<< orphan*/  g_free ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9 (SeafRepoManager *mgr)
{
    SeafRepoManagerPriv *priv = mgr->priv;
    GList *repo_ids = FUNC0 (priv->repo_hash);
    GList *ptr;
    GList *perms;
    char *repo_id;

    priv->user_perms = FUNC2 (g_str_hash, g_str_equal, g_free, NULL);
    priv->group_perms = FUNC2 (g_str_hash, g_str_equal, g_free, NULL);
    FUNC6 (&priv->perm_lock, NULL);

    for (ptr = repo_ids; ptr; ptr = ptr->next) {
        repo_id = ptr->data;
        perms = FUNC5 (mgr, repo_id, FOLDER_PERM_TYPE_USER);
        if (perms) {
            FUNC7 (&priv->perm_lock);
            FUNC1 (priv->user_perms, FUNC4(repo_id), perms);
            FUNC8 (&priv->perm_lock);
        }
        perms = FUNC5 (mgr, repo_id, FOLDER_PERM_TYPE_GROUP);
        if (perms) {
            FUNC7 (&priv->perm_lock);
            FUNC1 (priv->group_perms, FUNC4(repo_id), perms);
            FUNC8 (&priv->perm_lock);
        }
    }

    FUNC3 (repo_ids);
}