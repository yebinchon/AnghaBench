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
typedef  char wchar_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int MOVEFILE_REPLACE_EXISTING ; 
 int MOVEFILE_WRITE_THROUGH ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int
FUNC11 (const char *tmp_path, const char *obj_path)
{
#ifdef __linux__
    char *parent_dir;
    int ret = 0;

    if (FUNC8 (tmp_path, obj_path) < 0) {
        FUNC9 ("Failed to rename from %s to %s: %s.\n",
                      tmp_path, obj_path, FUNC10(errno));
        return -1;
    }

    parent_dir = FUNC5 (obj_path);
    int dir_fd = FUNC7 (parent_dir, O_RDONLY);
    if (dir_fd < 0) {
        FUNC9 ("Failed to open dir %s: %s.\n", parent_dir, FUNC10(errno));
        goto out;
    }

    /* Some file systems don't support fsyncing a directory. Just ignore the error.
     */
    if (FUNC3 (dir_fd) < 0) {
        if (errno != EINVAL) {
            FUNC9 ("Failed to fsync dir %s: %s.\n",
                          parent_dir, FUNC10(errno));
            ret = -1;
        }
        goto out;
    }

out:
    FUNC4 (parent_dir);
    if (dir_fd >= 0)
        FUNC2 (dir_fd);
    return ret;
#endif

#ifdef __APPLE__
    /*
     * OS X garantees an existence of obj_path always exists,
     * even when the system crashes.
     */
    if (rename (tmp_path, obj_path) < 0) {
        seaf_warning ("Failed to rename from %s to %s: %s.\n",
                      tmp_path, obj_path, strerror(errno));
        return -1;
    }
    return 0;
#endif

#ifdef WIN32
    wchar_t *w_tmp_path = g_utf8_to_utf16 (tmp_path, -1, NULL, NULL, NULL);
    wchar_t *w_obj_path = g_utf8_to_utf16 (obj_path, -1, NULL, NULL, NULL);
    int ret = 0;

    if (!MoveFileExW (w_tmp_path, w_obj_path,
                      MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH)) {
        seaf_warning ("MoveFilExW failed: %lu.\n", GetLastError());
        ret = -1;
        goto out;
    }

out:
    g_free (w_tmp_path);
    g_free (w_obj_path);
    return ret;
#endif
}