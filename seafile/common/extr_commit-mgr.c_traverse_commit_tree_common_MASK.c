#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
struct TYPE_15__ {TYPE_1__* data; } ;
struct TYPE_14__ {scalar_t__ second_parent_id; scalar_t__ parent_id; int /*<<< orphan*/  commit_id; } ;
typedef  int /*<<< orphan*/  SeafCommitManager ;
typedef  TYPE_1__ SeafCommit ;
typedef  TYPE_2__ GList ;
typedef  int /*<<< orphan*/  GHashTable ;
typedef  int /*<<< orphan*/  (* CommitTraverseFunc ) (TYPE_1__*,void*,scalar_t__*) ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  compare_commit_by_time ; 
 int /*<<< orphan*/  g_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__**,int /*<<< orphan*/ *,char const*,int,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static gboolean
FUNC10 (SeafCommitManager *mgr,
                             const char *repo_id,
                             int version,
                             const char *head,
                             CommitTraverseFunc func,
                             void *data,
                             gboolean skip_errors,
                             gboolean allow_truncate)
{
    SeafCommit *commit;
    GList *list = NULL;
    GHashTable *commit_hash;
    gboolean ret = TRUE;

    commit = FUNC7 (mgr, repo_id, version, head);
    if (!commit) {
        FUNC9 ("Failed to find commit %s.\n", head);
        // For head commit corrupted, directly return FALSE
        // user can repair head by fsck then retraverse the tree
        return FALSE;
    }

    /* A hash table for recording id of traversed commits. */
    commit_hash = FUNC1 (g_str_hash, g_str_equal, g_free, NULL);

    list = FUNC4 (list, commit,
                                           compare_commit_by_time,
                                           NULL);

    char *key = FUNC5 (commit->commit_id);
    FUNC2 (commit_hash, key, key);

    while (list) {
        gboolean stop = FALSE;
        commit = list->data;
        list = FUNC3 (list, list);

        if (!func (commit, data, &stop)) {
            FUNC9("[comit-mgr] CommitTraverseFunc failed\n");

            /* If skip errors, continue to traverse parents. */
            if (!skip_errors) {
                FUNC8 (commit);
                ret = FALSE;
                goto out;
            }
        }
        if (stop) {
            FUNC8 (commit);
            /* stop traverse down from this commit,
             * but not stop traversing the tree 
             */
            continue;
        }

        if (commit->parent_id) {
            if (FUNC6 (&list, commit_hash, repo_id, version,
                                      commit->parent_id, allow_truncate) < 0) {
                FUNC9("[comit-mgr] insert parent commit failed\n");

                /* If skip errors, try insert second parent. */
                if (!skip_errors) {
                    FUNC8 (commit);
                    ret = FALSE;
                    goto out;
                }
            }
        }
        if (commit->second_parent_id) {
            if (FUNC6 (&list, commit_hash, repo_id, version,
                                      commit->second_parent_id, allow_truncate) < 0) {
                FUNC9("[comit-mgr]insert second parent commit failed\n");

                if (!skip_errors) {
                    FUNC8 (commit);
                    ret = FALSE;
                    goto out;
                }
            }
        }
        FUNC8 (commit);
    }

out:
    FUNC0 (commit_hash);
    while (list) {
        commit = list->data;
        FUNC8 (commit);
        list = FUNC3 (list, list);
    }
    return ret;
}