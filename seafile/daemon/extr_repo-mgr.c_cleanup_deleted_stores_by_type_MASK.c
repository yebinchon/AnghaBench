#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  seaf_dir; } ;
struct TYPE_4__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ GError ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int*) ; 
 TYPE_2__* seaf ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (const char *type)
{
    char *top_store_dir;
    const char *repo_id;

    top_store_dir = FUNC0 (seaf->seaf_dir, "deleted_store", type, NULL);

    GError *error = NULL;
    GDir *dir = FUNC2 (top_store_dir, 0, &error);
    if (!dir) {
        FUNC6 ("Failed to open store dir %s: %s.\n",
                      top_store_dir, error->message);
        FUNC4 (top_store_dir);
        return;
    }

    int count = 0;
    while ((repo_id = FUNC3(dir)) != NULL) {
        FUNC5 (top_store_dir, repo_id, &count);
    }

    FUNC4 (top_store_dir);
    FUNC1 (dir);
}