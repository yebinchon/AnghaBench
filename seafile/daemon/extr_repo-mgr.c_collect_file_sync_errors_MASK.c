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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  SeafileFileSyncError ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_TYPE_FILE_SYNC_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int,char*,char const*,char*,char const*,char*,char const*,char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static gboolean
FUNC5 (sqlite3_stmt *stmt, void *data)
{
    GList **pret = data;
    const char *repo_id, *repo_name, *path;
    int id, err_id;
    gint64 timestamp;
    SeafileFileSyncError *error;

    id = FUNC2 (stmt, 0);
    repo_id = (const char *)FUNC4 (stmt, 1);
    repo_name = (const char *)FUNC4 (stmt, 2);
    path = (const char *)FUNC4 (stmt, 3);
    err_id = FUNC2 (stmt, 4);
    timestamp = FUNC3 (stmt, 5);

    error = FUNC1 (SEAFILE_TYPE_FILE_SYNC_ERROR,
                          "id", id,
                          "repo_id", repo_id,
                          "repo_name", repo_name,
                          "path", path,
                          "err_id", err_id,
                          "timestamp", timestamp,
                          NULL);
    *pret = FUNC0 (*pret, error);

    return TRUE;
}