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
typedef  int /*<<< orphan*/  json_t ;
typedef  char* gpointer ;
typedef  size_t SyncStatus ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char** path_status_tbl ; 

__attribute__((used)) static json_t *
FUNC7 (GHashTable *paths)
{
    json_t *array = NULL, *obj = NULL;
    GHashTableIter iter;
    gpointer key, value;
    char *path;
    SyncStatus status;

    array = FUNC2 ();

    FUNC0 (&iter, paths);
    while (FUNC1 (&iter, &key, &value)) {
        path = key;
        status = (SyncStatus)value;

        obj = FUNC4 ();
        FUNC5 (obj, "path", FUNC6(path));
        FUNC5 (obj, "status", FUNC6(path_status_tbl[status]));

        FUNC3 (array, obj);
    }

    return array;
}