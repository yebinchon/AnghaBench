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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  block_id ;
struct TYPE_5__ {TYPE_1__* be_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  block_dir; int /*<<< orphan*/  v0_block_dir; } ;
typedef  int /*<<< orphan*/  (* SeafBlockFunc ) (char const*,int,char*,void*) ;
typedef  int /*<<< orphan*/  GDir ;
typedef  TYPE_1__ FsPriv ;
typedef  TYPE_2__ BlockBackend ;

/* Variables and functions */
 int SEAF_PATH_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,...) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10 (BlockBackend *bend,
                                const char *store_id,
                                int version,
                                SeafBlockFunc process,
                                void *user_data)
{
    FsPriv *priv = bend->be_priv;
    char *block_dir = NULL;
    int dir_len;
    GDir *dir1 = NULL, *dir2;
    const char *dname1, *dname2;
    char block_id[128];
    char path[SEAF_PATH_MAX], *pos;
    int ret = 0;

#if defined MIGRATION
    if (version > 0)
        block_dir = g_build_filename (priv->block_dir, store_id, NULL);
    else
        block_dir = g_strdup(priv->v0_block_dir);
#else
    block_dir = FUNC0 (priv->block_dir, store_id, NULL);
#endif
    dir_len = FUNC9 (block_dir);

    dir1 = FUNC2 (block_dir, 0, NULL);
    if (!dir1) {
        goto out;
    }

    FUNC6 (path, block_dir, dir_len);
    pos = path + dir_len;

    while ((dname1 = FUNC3(dir1)) != NULL) {
        FUNC8 (pos, sizeof(path) - dir_len, "/%s", dname1);

        dir2 = FUNC2 (path, 0, NULL);
        if (!dir2) {
            FUNC7 ("Failed to open block dir %s.\n", path);
            continue;
        }

        while ((dname2 = FUNC3(dir2)) != NULL) {
            FUNC8 (block_id, sizeof(block_id), "%s%s", dname1, dname2);
            if (!process (store_id, version, block_id, user_data)) {
                FUNC1 (dir2);
                goto out;
            }
        }
        FUNC1 (dir2);
    }

out:
    if (dir1)
        FUNC1 (dir1);
    FUNC4 (block_dir);

    return ret;
}