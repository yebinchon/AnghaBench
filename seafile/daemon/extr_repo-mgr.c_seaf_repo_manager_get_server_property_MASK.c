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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*) ; 

char *
FUNC5 (SeafRepoManager *mgr,
                                       const char *server_url,
                                       const char *key)
{
    char *sql = FUNC3 ("SELECT value FROM ServerProperty WHERE "
                                 "server_url=%Q AND key=%Q;",
                                 server_url, key);
    char *value;

    FUNC0 (&mgr->priv->db_lock);

    value = FUNC4 (mgr->priv->db, sql);

    FUNC1 (&mgr->priv->db_lock);

    FUNC2 (sql);
    return value;
}