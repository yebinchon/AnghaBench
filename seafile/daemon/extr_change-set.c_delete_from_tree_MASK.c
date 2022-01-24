#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_13__ {int /*<<< orphan*/  fs_mgr; } ;
struct TYPE_12__ {char* repo_id; TYPE_2__* tree_root; } ;
struct TYPE_11__ {int /*<<< orphan*/  dents; int /*<<< orphan*/  version; } ;
struct TYPE_10__ {int /*<<< orphan*/  mode; TYPE_2__* subdir; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SeafDir ;
typedef  TYPE_1__ ChangeSetDirent ;
typedef  TYPE_2__ ChangeSetDir ;
typedef  TYPE_3__ ChangeSet ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 char** FUNC5 (char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 TYPE_5__* seaf ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ChangeSetDirent *
FUNC12 (ChangeSet *changeset,
                  const char *path,
                  gboolean *parent_empty)
{
    char *repo_id = changeset->repo_id;
    ChangeSetDir *root = changeset->tree_root;
    char **parts, *dname;
    int n, i;
    ChangeSetDir *dir;
    ChangeSetDirent *dent, *ret = NULL;
    SeafDir *seaf_dir;

    *parent_empty = FALSE;

    parts = FUNC5 (path, "/", 0);
    n = FUNC6(parts);
    dir = root;
    for (i = 0; i < n; i++) {
        dname = parts[i];

        dent = FUNC2 (dir->dents, dname);
        if (!dent)
            break;

        if (FUNC0(dent->mode)) {
            if (i == (n-1)) {
                /* Remove from hash table without freeing dent. */
                FUNC7 (dir, dname);
                if (FUNC3 (dir->dents) == 0)
                    *parent_empty = TRUE;
                ret = dent;
                break;
            }

            if (!dent->subdir) {
                seaf_dir = FUNC10(seaf->fs_mgr,
                                                       repo_id,
                                                       root->version,
                                                       dent->id);
                if (!seaf_dir) {
                    FUNC11 ("Failed to load seafdir %s:%s\n",
                                  repo_id, dent->id);
                    break;
                }
                dent->subdir = FUNC9 (seaf_dir);
                FUNC8 (seaf_dir);
            }
            dir = dent->subdir;
        } else if (FUNC1(dent->mode)) {
            if (i == (n-1)) {
                /* Remove from hash table without freeing dent. */
                FUNC7 (dir, dname);
                if (FUNC3 (dir->dents) == 0)
                    *parent_empty = TRUE;
                ret = dent;
                break;
            }
        }
    }

    FUNC4 (parts);
    return ret;
}