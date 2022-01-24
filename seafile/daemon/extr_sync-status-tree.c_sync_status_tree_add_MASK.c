#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t guint ;
struct TYPE_17__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_16__ {int /*<<< orphan*/  str; } ;
struct TYPE_15__ {int /*<<< orphan*/  dirents; } ;
struct TYPE_14__ {TYPE_3__* subdir; int /*<<< orphan*/  mode; } ;
struct TYPE_13__ {char* worktree; TYPE_3__* root; } ;
typedef  TYPE_1__ SyncStatusTree ;
typedef  TYPE_2__ SyncStatusDirent ;
typedef  TYPE_3__ SyncStatusDir ;
typedef  TYPE_4__ GString ;

/* Variables and functions */
 int S_IFDIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (char*) ; 
 char** FUNC8 (char const*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (char**) ; 
 TYPE_7__* seaf ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (char*,int) ; 

void
FUNC12 (SyncStatusTree *tree,
                      const char *path,
                      int mode)
{
    char **dnames = NULL;
    guint n, i;
    char *dname;
    SyncStatusDir *dir = tree->root;
    SyncStatusDirent *dirent;
    GString *buf;

    dnames = FUNC8 (path, "/", 0);
    if (!dnames)
        return;
    n = FUNC9 (dnames);

    buf = FUNC7 ("");
    FUNC5 (buf, tree->worktree);

    for (i = 0; i < n; i++) {
        dname = dnames[i];
        dirent = FUNC2 (dir->dirents, dname);
        FUNC5 (buf, "/");
        FUNC5 (buf, dname);
        if (dirent) {
            if (FUNC0(dirent->mode)) {
                if (i == (n-1)) {
                    goto out;
                } else {
                    dir = dirent->subdir;
                }
            } else {
                goto out;
            }
        } else {
            if (i == (n-1)) {
                dirent = FUNC11 (dname, mode);
                FUNC1 (dir->dirents, FUNC3(dname), dirent);
            } else {
                dirent = FUNC11 (dname, S_IFDIR);
                FUNC1 (dir->dirents, FUNC3(dname), dirent);
                dir = dirent->subdir;
            }
#ifdef WIN32
            seaf_sync_manager_add_refresh_path (seaf->sync_mgr, buf->str);
#endif
        }
    }

out:
    FUNC6 (buf, TRUE);
    FUNC4 (dnames);
}