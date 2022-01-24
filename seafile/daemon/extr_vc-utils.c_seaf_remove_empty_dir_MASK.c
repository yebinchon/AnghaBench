#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  message; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ GError ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC1 (char*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12 (const char *path)
{
    SeafStat st;
    GDir *dir;
    const char *dname;
    char *full_path;
    GError *error = NULL;

    if (FUNC7 (path, &st) < 0 || !FUNC0(st.st_mode))
        return 0;

    if (FUNC8 (path) < 0) {
        dir = FUNC3 (path, 0, &error);
        if (!dir) {
            FUNC10 ("Failed to open dir %s: %s.\n", path, error->message);
            return -1;
        }

        /* Remove all ignored hidden files. */
        while ((dname = FUNC4 (dir)) != NULL) {
            if (FUNC6(dname)) {
                full_path = FUNC1 ("/", path, dname, NULL);
                if (FUNC9 (full_path) < 0)
                    FUNC10 ("Failed to remove file %s: %s.\n",
                                  full_path, FUNC11(errno));
                FUNC5 (full_path);
            }
        }

        FUNC2 (dir);

        if (FUNC8 (path) < 0) {
            FUNC10 ("Failed to remove dir %s: %s.\n", path, FUNC11(errno));
            return -1;
        }
    }

    return 0;
}