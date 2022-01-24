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
typedef  TYPE_2__ SeafFilelockManager ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  _LOCKED_AUTO ; 
 int /*<<< orphan*/  collect_auto_locked_files ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

GList *
FUNC6 (SeafFilelockManager *mgr)
{
    char *sql;
    GList *ret = NULL;

    FUNC1 (&mgr->priv->db_lock);

    sql = FUNC4 ("SELECT repo_id, path FROM ServerLockedFiles "
                           "WHERE locked_by_me = %d", _LOCKED_AUTO);
    FUNC5 (mgr->priv->db, sql,
                                 collect_auto_locked_files,
                                 &ret);

    FUNC2 (&mgr->priv->db_lock);

    ret = FUNC0 (ret);

    FUNC3 (sql);
    return ret;
}