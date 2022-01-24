#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_14__ {int /*<<< orphan*/  fs_mgr; int /*<<< orphan*/  commit_mgr; } ;
struct TYPE_13__ {TYPE_1__* data; struct TYPE_13__* next; } ;
struct TYPE_12__ {int /*<<< orphan*/  root_id; } ;
struct TYPE_11__ {TYPE_4__* entries; } ;
struct TYPE_10__ {char* name; char* modifier; int /*<<< orphan*/  mtime; } ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_2__ SeafDir ;
typedef  TYPE_3__ SeafCommit ;
typedef  TYPE_4__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*) ; 
 TYPE_9__* seaf ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10 (const char *repo_id, const char *store_id, int version,
                            const char *head, const char *path,
                            char **modifier, gint64 *mtime)
{
    SeafCommit *commit = NULL;
    SeafDir *dir = NULL;
    SeafDirent *dent = NULL;
    int ret = 0;

    commit = FUNC4 (seaf->commit_mgr,
                                             repo_id, version,
                                             head);
    if (!commit) {
        FUNC8 ("Failed to get commit %s.\n", head);
        return -1;
    }

    char *parent = FUNC2 (path);
    if (FUNC9(parent, ".") == 0) {
        FUNC0 (parent);
        parent = FUNC3("");
    }
    char *filename = FUNC1 (path);

    dir = FUNC7 (seaf->fs_mgr,
                                               store_id, version,
                                               commit->root_id,
                                               parent, NULL);
    if (!dir) {
        FUNC8 ("dir %s doesn't exist in repo %s.\n", parent, repo_id);
        ret = -1;
        goto out;
    }

    GList *p;
    for (p = dir->entries; p; p = p->next) {
        SeafDirent *d = p->data;
        if (FUNC9 (d->name, filename) == 0) {
            dent = d;
            break;
        }
    }

    if (!dent) {
        goto out;
    }

    *modifier = FUNC3(dent->modifier);
    *mtime = dent->mtime;

out:
    FUNC0 (parent);
    FUNC0 (filename);
    FUNC5 (commit);
    FUNC6 (dir);

    return ret;
}