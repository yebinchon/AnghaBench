#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  X509_STORE ;
struct TYPE_2__ {int /*<<< orphan*/  seaf_dir; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  load_certs ; 
 TYPE_1__* seaf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC6 (X509_STORE *store)
{
    char *cert_db_path = NULL;
    sqlite3 *db = NULL;
    char *sql;
    int ret = 0;

    cert_db_path = FUNC0 (seaf->seaf_dir, "certs.db", NULL);
    if (FUNC5 (cert_db_path, &db) < 0) {
        FUNC2 ("Failed to open certs.db\n");
        ret = -1;
        goto out;
    }

    sql = "SELECT cert FROM Certs;";

    if (FUNC4 (db, sql, load_certs, store) < 0) {
        ret = -1;
        goto out;
    }

out:
    FUNC1 (cert_db_path);
    if (db)
        FUNC3 (db);

    return ret;
}