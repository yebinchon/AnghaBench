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
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int G_USEC_PER_SEC ; 
 int REMOVE_OBJECTS_BATCH ; 
 char* FUNC0 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10 (const char *top_store_dir, const char *store_id, int *count)
{
    char *obj_dir = NULL;
    GDir *dir1, *dir2;
    const char *dname1, *dname2;
    char *path1, *path2;

    obj_dir = FUNC0 (top_store_dir, store_id, NULL);

    dir1 = FUNC2 (obj_dir, 0, NULL);
    if (!dir1) {
        FUNC4 (obj_dir);
        return 0;
    }

    FUNC8 ("Removing store %s\n", obj_dir);

    while ((dname1 = FUNC3(dir1)) != NULL) {
        path1 = FUNC0 (obj_dir, dname1, NULL);

        dir2 = FUNC2 (path1, 0, NULL);
        if (!dir2) {
            FUNC9 ("Failed to open obj dir %s.\n", path1);
            FUNC1 (dir1);
            FUNC4 (path1);
            FUNC4 (obj_dir);
            return -1;
        }

        while ((dname2 = FUNC3(dir2)) != NULL) {
            path2 = FUNC0 (path1, dname2, NULL);
            FUNC6 (path2);

            /* To prevent using too much IO, only remove 1000 objects per 5 seconds.
             */
            if (++(*count) > REMOVE_OBJECTS_BATCH) {
                FUNC7 (5 * G_USEC_PER_SEC);
                *count = 0;
            }

            FUNC4 (path2);
        }
        FUNC1 (dir2);

        FUNC5 (path1);
        FUNC4 (path1);
    }

    FUNC1 (dir1);
    FUNC5 (obj_dir);
    FUNC4 (obj_dir);

    return 0;
}