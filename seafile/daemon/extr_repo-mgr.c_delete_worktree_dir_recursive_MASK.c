#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
struct TYPE_6__ {scalar_t__ sec; } ;
struct cache_entry {TYPE_1__ ce_mtime; } ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_8__ {int /*<<< orphan*/  message; } ;
struct TYPE_7__ {scalar_t__ st_mtime; int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_2__ SeafStat ;
typedef  TYPE_3__ GError ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_NORMALIZE_NFC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char*,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,TYPE_3__**) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (char const*,int,int /*<<< orphan*/ ) ; 
 struct cache_entry* FUNC8 (struct index_state*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16 (struct index_state *istate,
                               const char *path,
                               const char *full_path)
{
    GDir *dir;
    const char *dname;
    char *dname_nfc;
    GError *error = NULL;
    char *sub_path, *full_sub_path;
    SeafStat st;
    int ret = 0;
    gboolean builtin_ignored = FALSE;

    dir = FUNC3 (full_path, 0, &error);
    if (!dir) {
        FUNC13 ("Failed to open dir %s: %s.\n", full_path, error->message);
        return -1;
    }

    while ((dname = FUNC4 (dir)) != NULL) {
        dname_nfc = FUNC7 (dname, -1, G_NORMALIZE_NFC);
        sub_path = FUNC1 ("/", path, dname_nfc, NULL);
        full_sub_path = FUNC1 ("/", full_path, dname_nfc, NULL);
        builtin_ignored = FUNC9 (dname_nfc);
        FUNC5 (dname_nfc);

        if (FUNC10 (full_sub_path, &st) < 0) {
            FUNC13 ("Failed to stat %s.\n", full_sub_path);
            FUNC5 (sub_path);
            FUNC5 (full_sub_path);
            ret = -1;
            continue;
        }

        if (FUNC0(st.st_mode)) {
            if (FUNC16 (istate, sub_path, full_sub_path) < 0)
                ret = -1;
        } else {
            struct cache_entry *ce;
            /* Files like .DS_Store and Thumbs.db should be deleted any way. */
            if (!builtin_ignored) {
                ce = FUNC8 (istate, sub_path, FUNC15(sub_path), 0);
                if (!ce || ce->ce_mtime.sec != st.st_mtime) {
                    FUNC11 ("File %s is changed, skip deleting it.\n", full_sub_path);
                    FUNC5 (sub_path);
                    FUNC5 (full_sub_path);
                    ret = -1;
                    continue;
                }
            }

            /* Delete all other file types. */
            if (FUNC12 (full_sub_path) < 0) {
                FUNC13 ("Failed to delete file %s: %s.\n",
                              full_sub_path, FUNC14(errno));
                ret = -1;
            }
        }

        FUNC5 (sub_path);
        FUNC5 (full_sub_path);
    }

    FUNC2 (dir);

    if (ret < 0)
        return ret;

    if (FUNC6 (full_path) < 0) {
        FUNC13 ("Failed to delete dir %s: %s.\n", full_path, FUNC14(errno));
        ret = -1;
    }

    return ret;
}