#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* data; struct TYPE_12__* next; } ;
struct TYPE_11__ {TYPE_3__* entries; } ;
struct TYPE_10__ {char* name; } ;
typedef  int /*<<< orphan*/  SeafFSManager ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_2__ SeafDir ;
typedef  TYPE_3__ GList ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_DIR_MISSING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,char const*,int,char const*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,char const*,int,char const*,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

SeafDirent *
FUNC10 (SeafFSManager *mgr,
                                    const char *repo_id,
                                    int version,
                                    const char *root_id,
                                    const char *path,
                                    GError **error)
{
    SeafDirent *dent = NULL;
    SeafDir *dir = NULL;
    char *parent_dir = NULL;
    char *file_name = NULL;

    parent_dir  = FUNC2(path);
    file_name = FUNC1(path);

    if (FUNC9 (parent_dir, ".") == 0) {
        dir = FUNC6 (mgr, repo_id, version, root_id);
        if (!dir) {
            FUNC3 (error, SEAFILE_DOMAIN, SEAF_ERR_DIR_MISSING, "directory is missing");
        }
    } else
        dir = FUNC7 (mgr, repo_id, version,
                                                   root_id, parent_dir, error);

    if (!dir) {
        FUNC8 ("dir %s doesn't exist in repo %.8s.\n", parent_dir, repo_id);
        goto out;
    }

    GList *p;
    for (p = dir->entries; p; p = p->next) {
        SeafDirent *d = p->data;
        if (FUNC9 (d->name, file_name) == 0) {
            dent = FUNC5(d);
            break;
        }
    }

out:
    if (dir)
        FUNC4 (dir);
    FUNC0 (parent_dir);
    FUNC0 (file_name);

    return dent;
}