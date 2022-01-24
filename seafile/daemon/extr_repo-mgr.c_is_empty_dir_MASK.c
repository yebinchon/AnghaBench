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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean
FUNC4 (const char *path, GList *ignore_list)
{
    GDir *dir;
    const char *dname;
    gboolean ret = TRUE;

    dir = FUNC1 (path, 0, NULL);
    if (!dir) {
        return FALSE;
    }

    while ((dname = FUNC2(dir)) != NULL) {
        if (!FUNC3(path, dname, ignore_list)) {
            ret = FALSE;
            break;
        }
    }
    FUNC0 (dir);

    return ret;
}