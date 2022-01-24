#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {char* data; struct TYPE_3__* next; } ;
typedef  TYPE_1__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_COMPACT ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6 (GList *repo_id_list)
{
    json_t *array = FUNC0();
    GList *ptr;
    char *repo_id;

    for (ptr = repo_id_list; ptr; ptr = ptr->next) {
        repo_id = ptr->data;
        FUNC1 (array, FUNC4(repo_id));
    }

    char *data = FUNC3 (array, JSON_COMPACT);
    if (!data) {
        FUNC5 ("Failed to dump json.\n");
        FUNC2 (array);
        return NULL;
    }

    FUNC2 (array);
    return data;
}