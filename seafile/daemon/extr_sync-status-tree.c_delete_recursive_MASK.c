#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t guint ;
struct TYPE_8__ {int /*<<< orphan*/  dirents; } ;
struct TYPE_7__ {TYPE_2__* subdir; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ SyncStatusDirent ;
typedef  TYPE_2__ SyncStatusDir ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char const*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char*) ; 

__attribute__((used)) static void
FUNC6 (SyncStatusDir *dir, char **dnames, guint n, guint i,
                  const char *base)
{
    char *dname;
    SyncStatusDirent *dirent;
    char *fullpath = NULL;

    dname = dnames[i];
    fullpath = FUNC3 (base, "/", dname, NULL);

    dirent = FUNC2 (dir->dirents, dname);
    if (dirent) {
        if (FUNC0(dirent->mode)) {
            if (i == (n-1)) {
                if (FUNC4(dirent))
                    FUNC5 (dir, dname, fullpath);
            } else {
                FUNC6 (dirent->subdir, dnames, n, ++i, fullpath);
                /* If this dir becomes empty after deleting the entry below,
                 * remove the dir itself too.
                 */
                if (FUNC4(dirent))
                    FUNC5 (dir, dname, fullpath);
            }
        } else if (i == (n-1)) {
            FUNC5 (dir, dname, fullpath);
        }
    }

    FUNC1 (fullpath);
}