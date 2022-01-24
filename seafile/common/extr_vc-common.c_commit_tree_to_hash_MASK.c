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
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_5__ {int /*<<< orphan*/  commit_mgr; } ;
struct TYPE_4__ {int /*<<< orphan*/  commit_id; int /*<<< orphan*/  version; int /*<<< orphan*/  repo_id; } ;
typedef  TYPE_1__ SeafCommit ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  add_to_commit_hash ; 
 int /*<<< orphan*/  g_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_str_equal ; 
 int /*<<< orphan*/  g_str_hash ; 
 TYPE_2__* seaf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GHashTable *
FUNC3 (SeafCommit *head)
{
    GHashTable *hash;
    gboolean res;

    hash = FUNC1 (g_str_hash, g_str_equal, g_free, NULL);

    res = FUNC2 (seaf->commit_mgr,
                                                    head->repo_id,
                                                    head->version,
                                                    head->commit_id,
                                                    add_to_commit_hash,
                                                    hash, FALSE);
    if (!res)
        goto fail;

    return hash;

fail:
    FUNC0 (hash);
    return NULL;
}