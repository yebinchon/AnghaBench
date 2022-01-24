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
typedef  int /*<<< orphan*/  sql ;
struct TYPE_6__ {char* repo_id; TYPE_1__* manager; } ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  load_version_info_cb ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2 (CloneTask *task)
{
    char sql[256];

    FUNC0 (sql, sizeof(sql),
              "SELECT repo_version FROM CloneVersionInfo WHERE repo_id='%s'",
              task->repo_id);

    FUNC1 (task->manager->db, sql,
                                 load_version_info_cb, task);
}