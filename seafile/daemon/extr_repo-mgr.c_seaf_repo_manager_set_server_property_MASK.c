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
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ SeafRepoManager ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*,char const*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 

int
FUNC7 (SeafRepoManager *mgr,
                                       const char *server_url,
                                       const char *key,
                                       const char *value)
{
    char *sql;
    int ret;
    char *canon_server_url = FUNC0(server_url);

    FUNC2 (&mgr->priv->db_lock);

    sql = FUNC5 ("REPLACE INTO ServerProperty VALUES (%Q, %Q, %Q);",
                           canon_server_url, key, value);
    ret = FUNC6 (mgr->priv->db, sql);

    FUNC3 (&mgr->priv->db_lock);

    FUNC4 (sql);
    FUNC1 (canon_server_url);
    return ret;
}