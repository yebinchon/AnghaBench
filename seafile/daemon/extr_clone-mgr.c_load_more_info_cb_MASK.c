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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_4__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ json_error_t ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_5__ {void* repo_salt; void* server_url; int /*<<< orphan*/  is_readonly; } ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC8 (sqlite3_stmt *stmt, void *data)
{
    CloneTask *task = data;
    json_error_t jerror;
    json_t *object = NULL;
    const char *more_info;

    more_info = (const char *)FUNC7 (stmt, 0);
    object = FUNC3 (more_info, 0, &jerror);
    if (!object) {
        FUNC6 ("Failed to load more sync info from json: %s.\n", jerror.text);
        return FALSE;
    }
        
    json_t *integer = FUNC4 (object, "is_readonly");
    task->is_readonly = FUNC2 (integer);
    json_t *string = FUNC4 (object, "server_url");
    if (string)
        task->server_url = FUNC0 (FUNC5 (string));
    json_t *repo_salt = FUNC4 (object, "repo_salt");
    if (repo_salt)
        task->repo_salt = FUNC0 (FUNC5 (repo_salt));
    FUNC1 (object);

    return FALSE;
}