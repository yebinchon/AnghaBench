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
struct TYPE_5__ {TYPE_1__* be_priv; } ;
struct TYPE_4__ {char* block_dir; } ;
typedef  int /*<<< orphan*/  GDir ;
typedef  TYPE_1__ FsPriv ;
typedef  TYPE_2__ BlockBackend ;

/* Variables and functions */
 char* FUNC0 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8 (BlockBackend *bend, const char *store_id)
{
    FsPriv *priv = bend->be_priv;
    char *block_dir = NULL;
    GDir *dir1, *dir2;
    const char *dname1, *dname2;
    char *path1, *path2;

    block_dir = FUNC0 (priv->block_dir, store_id, NULL);

    dir1 = FUNC2 (block_dir, 0, NULL);
    if (!dir1) {
        FUNC4 (block_dir);
        return 0;
    }

    while ((dname1 = FUNC3(dir1)) != NULL) {
        path1 = FUNC0 (block_dir, dname1, NULL);

        dir2 = FUNC2 (path1, 0, NULL);
        if (!dir2) {
            FUNC7 ("Failed to open block dir %s.\n", path1);
            FUNC1 (dir1);
            FUNC4 (path1);
            FUNC4 (block_dir);
            return -1;
        }

        while ((dname2 = FUNC3(dir2)) != NULL) {
            path2 = FUNC0 (path1, dname2, NULL);
            FUNC6 (path2);
            FUNC4 (path2);
        }
        FUNC1 (dir2);

        FUNC5 (path1);
        FUNC4 (path1);
    }

    FUNC1 (dir1);
    FUNC5 (block_dir);
    FUNC4 (block_dir);

    return 0;
}