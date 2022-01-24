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
struct TYPE_3__ {char* name; int argc; char** argv; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ clusterManagerCommand ;
struct TYPE_4__ {TYPE_1__ cluster_manager_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTER_MANAGER_CMD_FLAG_COLOR ; 
 TYPE_2__ config ; 
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static void FUNC1(char *cmdname, int argc, char **argv) {
    clusterManagerCommand *cmd = &config.cluster_manager_command;
    cmd->name = cmdname;
    cmd->argc = argc;
    cmd->argv = argc ? argv : NULL;
    if (FUNC0()) cmd->flags |= CLUSTER_MANAGER_CMD_FLAG_COLOR;
}