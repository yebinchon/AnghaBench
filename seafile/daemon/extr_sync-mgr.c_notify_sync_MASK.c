#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_16__ {int /*<<< orphan*/  mq_mgr; int /*<<< orphan*/  commit_mgr; } ;
struct TYPE_15__ {int /*<<< orphan*/  str; } ;
struct TYPE_14__ {int /*<<< orphan*/  desc; int /*<<< orphan*/  parent_id; int /*<<< orphan*/  commit_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; TYPE_1__* head; int /*<<< orphan*/  version; } ;
struct TYPE_12__ {int /*<<< orphan*/  commit_id; } ;
typedef  TYPE_2__ SeafRepo ;
typedef  TYPE_3__ SeafCommit ;
typedef  TYPE_4__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  find_meaningful_commit ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_7__* seaf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (SeafRepo *repo, gboolean is_multipart_upload)
{
    SeafCommit *head = NULL;

    if (!FUNC3 (seaf->commit_mgr,
                                                   repo->id, repo->version,
                                                   repo->head->commit_id,
                                                   find_meaningful_commit,
                                                   &head, FALSE)) {
        FUNC6 ("Failed to traverse commit tree of %.8s.\n", repo->id);
        return;
    }
    if (!head)
        return;

    GString *buf = FUNC2 (NULL);
    FUNC0 (buf, "%s\t%s\t%s\t%s\t%s",
                            repo->name,
                            repo->id,
                            head->commit_id,
                            head->parent_id,
                            head->desc);
    if (!is_multipart_upload)
        FUNC5 (seaf->mq_mgr,
                                              "sync.done",
                                              buf->str);
    else
        FUNC5 (seaf->mq_mgr,
                                              "sync.multipart_upload",
                                              buf->str);
    FUNC1 (buf, TRUE);
    FUNC4 (head);
}