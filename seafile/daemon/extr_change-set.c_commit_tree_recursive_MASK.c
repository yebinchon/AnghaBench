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
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gpointer ;
typedef  int /*<<< orphan*/  gint64 ;
struct TYPE_16__ {int /*<<< orphan*/  fs_mgr; } ;
struct TYPE_15__ {int /*<<< orphan*/  version; int /*<<< orphan*/  dir_id; int /*<<< orphan*/  dents; } ;
struct TYPE_14__ {char* dir_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  mtime; int /*<<< orphan*/  id; TYPE_4__* subdir; } ;
typedef  TYPE_2__ SeafDir ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  TYPE_1__ ChangeSetDirent ;
typedef  TYPE_4__ ChangeSetDir ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_7__* seaf ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*) ; 

__attribute__((used)) static char *
FUNC10 (const char *repo_id, ChangeSetDir *dir, gint64 *new_mtime)
{
    ChangeSetDirent *dent;
    GHashTableIter iter;
    gpointer key, value;
    char *new_id;
    gint64 subdir_new_mtime;
    gint64 dir_mtime = 0;
    SeafDir *seaf_dir;
    char *ret = NULL;

    FUNC2 (&iter, dir->dents);
    while (FUNC3 (&iter, &key, &value)) {
        dent = value;
        if (dent->subdir) {
            new_id = FUNC10 (repo_id, dent->subdir, &subdir_new_mtime);
            if (!new_id)
                return NULL;

            FUNC5 (dent->id, new_id, 40);
            dent->mtime = subdir_new_mtime;
            FUNC1 (new_id);
        }
        if (dir_mtime < dent->mtime)
            dir_mtime = dent->mtime;
    }

    seaf_dir = FUNC0 (dir);

    FUNC5 (dir->dir_id, seaf_dir->dir_id, 40);

    if (!FUNC8 (seaf->fs_mgr,
                                        repo_id, dir->version,
                                        seaf_dir->dir_id)) {
        if (FUNC7 (seaf->fs_mgr, repo_id, dir->version, seaf_dir) < 0) {
            FUNC9 ("Failed to save dir object %s to repo %s.\n",
                          seaf_dir->dir_id, repo_id);
            goto out;
        }
    }

    ret = FUNC4(seaf_dir->dir_id);

out:
    if (ret != NULL)
        *new_mtime = dir_mtime;

    FUNC6 (seaf_dir);
    return ret;
}