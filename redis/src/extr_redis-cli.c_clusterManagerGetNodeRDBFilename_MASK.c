#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ clusterManagerNode ;
struct TYPE_5__ {int /*<<< orphan*/  backup_dir; } ;
struct TYPE_7__ {TYPE_1__ cluster_manager_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ config ; 
 char* FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sds FUNC5(clusterManagerNode *node) {
    FUNC0(config.cluster_manager_command.backup_dir);
    sds filename = FUNC4(config.cluster_manager_command.backup_dir);
    if (filename[FUNC3(filename) - 1] != '/')
        filename = FUNC1(filename, "/");
    filename = FUNC2(filename, "redis-node-%s-%d-%s.rdb", node->ip,
                            node->port, node->name);
    return filename;
}