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
typedef  int /*<<< orphan*/  sql ;
struct TYPE_12__ {scalar_t__ data; struct TYPE_12__* next; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ GList ;
typedef  scalar_t__ FolderPermType ;
typedef  int /*<<< orphan*/  FolderPerm ;

/* Variables and functions */
 scalar_t__ FOLDER_PERM_TYPE_GROUP ; 
 scalar_t__ FOLDER_PERM_TYPE_USER ; 
 int /*<<< orphan*/  comp_folder_perms ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  load_folder_perm ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_3__**) ; 

__attribute__((used)) static GList *
FUNC8 (SeafRepoManager *mgr,
                            const char *repo_id,
                            FolderPermType type)
{
    GList *perms = NULL;
    char sql[256];

    FUNC3 ((type == FOLDER_PERM_TYPE_USER ||
                           type == FOLDER_PERM_TYPE_GROUP),
                          NULL);

    if (type == FOLDER_PERM_TYPE_USER)
        FUNC6 (sizeof(sql), sql,
                          "SELECT path, permission FROM FolderUserPerms "
                          "WHERE repo_id = '%q'",
                          repo_id);
    else
        FUNC6 (sizeof(sql), sql,
                          "SELECT path, permission FROM FolderGroupPerms "
                          "WHERE repo_id = '%q'",
                          repo_id);

    FUNC4 (&mgr->priv->db_lock);

    if (FUNC7 (mgr->priv->db, sql,
                                     load_folder_perm, &perms) < 0) {
        FUNC5 (&mgr->priv->db_lock);
        GList *ptr;
        for (ptr = perms; ptr; ptr = ptr->next)
            FUNC0 ((FolderPerm *)ptr->data);
        FUNC1 (perms);
        return NULL;
    }

    FUNC5 (&mgr->priv->db_lock);

    /* Sort list in descending order by perm->path (longer path first). */
    perms = FUNC2 (perms, comp_folder_perms);

    return perms;
}