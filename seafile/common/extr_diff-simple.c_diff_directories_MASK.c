#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sub_dirs ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  dirs ;
struct TYPE_15__ {int /*<<< orphan*/  fs_mgr; } ;
struct TYPE_14__ {int (* dir_cb ) (int,char const*,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  store_id; int /*<<< orphan*/  version; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {char* name; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_1__ SeafDir ;
typedef  TYPE_3__ DiffOptions ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (int,TYPE_1__**,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* seaf ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char const*,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9 (int n, SeafDirent *dents[], const char *basedir, DiffOptions *opt)
{
    SeafDirent *dirs[3];
    int i, n_dirs = 0;
    char *dirname = "";
    int ret;
    SeafDir *sub_dirs[3], *dir;

    FUNC4 (dirs, 0, sizeof(dirs[0])*n);
    for (i = 0; i < n; ++i) {
        if (dents[i] && FUNC0(dents[i]->mode)) {
            dirs[i] = dents[i];
            ++n_dirs;
        }
    }

    if (n_dirs == 0)
        return 0;

    gboolean recurse = TRUE;
    ret = opt->dir_cb (n, basedir, dirs, opt->data, &recurse);
    if (ret < 0)
        return ret;

    if (!recurse)
        return 0;

    FUNC4 (sub_dirs, 0, sizeof(sub_dirs[0])*n);
    for (i = 0; i < n; ++i) {
        if (dents[i] != NULL && FUNC0(dents[i]->mode)) {
            dir = FUNC6 (seaf->fs_mgr,
                                               opt->store_id,
                                               opt->version,
                                               dents[i]->id);
            if (!dir) {
                FUNC7 ("Failed to find dir %s:%s.\n",
                              opt->store_id, dents[i]->id);
                ret = -1;
                goto free_sub_dirs;
            }
            sub_dirs[i] = dir;

            dirname = dents[i]->name;
        }
    }

    char *new_basedir = FUNC3 (basedir, dirname, "/", NULL);

    ret = FUNC1 (n, sub_dirs, new_basedir, opt);

    FUNC2 (new_basedir);

free_sub_dirs:
    for (i = 0; i < n; ++i)
        FUNC5 (sub_dirs[i]);
    return ret;
}