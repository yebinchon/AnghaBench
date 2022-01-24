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
typedef  int /*<<< orphan*/  guint32 ;
typedef  int /*<<< orphan*/  SeafFSManager ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

char *
FUNC3 (SeafFSManager *mgr,
                                        const char *repo_id,
                                        int version,
                                        const char *root_id,
                                        const char *path,
                                        GError **error)
{
    guint32 mode;
    char *file_id;

    file_id = FUNC2 (mgr, repo_id, version,
                                              root_id, path, &mode, error);

    if (!file_id)
        return NULL;

    if (file_id && FUNC0(mode)) {
        FUNC1 (file_id);
        return NULL;
    }

    return file_id;
}