#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sql ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_4__ {TYPE_1__* clone_mgr; int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* seaf ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static gboolean
FUNC3 (const char *repo_id)
{
    if (FUNC0 (seaf->repo_mgr, repo_id))
        return TRUE;

    char sql[256];
    FUNC1 (sql, sizeof(sql), "SELECT 1 FROM CloneTasks WHERE repo_id='%s'",
              repo_id);
    if (FUNC2 (seaf->clone_mgr->db, sql))
        return TRUE;

    return FALSE;
}