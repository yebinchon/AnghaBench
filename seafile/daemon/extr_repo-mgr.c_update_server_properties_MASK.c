#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ SeafRepoManager ;

/* Variables and functions */
 int /*<<< orphan*/  REPO_PROP_SERVER_URL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7 (SeafRepoManager *mgr,
                          const char *repo_id,
                          const char *new_server_url)
{
    char *old_server_url = NULL;
    char *sql = NULL;

    old_server_url = FUNC3 (mgr, repo_id,
                                                          REPO_PROP_SERVER_URL);
    if (!old_server_url)
        return;

    FUNC1 (&mgr->priv->db_lock);

    sql = FUNC5 ("UPDATE ServerProperty SET server_url=%Q WHERE "
                           "server_url=%Q;", new_server_url, old_server_url);
    FUNC6 (mgr->priv->db, sql);

    FUNC2 (&mgr->priv->db_lock);

    FUNC4 (sql);
    FUNC0 (old_server_url);
}