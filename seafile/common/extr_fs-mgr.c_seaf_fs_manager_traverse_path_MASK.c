#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TraverseFSPathCallback ;
typedef  int /*<<< orphan*/  SeafFSManager ;
typedef  int /*<<< orphan*/  SeafDirent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

int
FUNC4 (SeafFSManager *mgr,
                               const char *repo_id,
                               int version,
                               const char *root_id,
                               const char *dir_path,
                               TraverseFSPathCallback callback,
                               void *user_data)
{
    SeafDirent *dent;
    int ret = 0;

    dent = FUNC1 (mgr, repo_id, version,
                                               root_id, dir_path, NULL);
    if (!dent) {
        FUNC2 ("Failed to get dirent for %.8s:%s.\n", repo_id, dir_path);
        return -1;
    }

    ret = FUNC3 (mgr, repo_id, version, dir_path, dent,
                             callback, user_data);

    FUNC0 (dent);
    return ret;
}