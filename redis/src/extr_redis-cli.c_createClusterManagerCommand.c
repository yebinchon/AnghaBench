
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int argc; char** argv; int flags; } ;
typedef TYPE_1__ clusterManagerCommand ;
struct TYPE_4__ {TYPE_1__ cluster_manager_command; } ;


 int CLUSTER_MANAGER_CMD_FLAG_COLOR ;
 TYPE_2__ config ;
 scalar_t__ isColorTerm () ;

__attribute__((used)) static void createClusterManagerCommand(char *cmdname, int argc, char **argv) {
    clusterManagerCommand *cmd = &config.cluster_manager_command;
    cmd->name = cmdname;
    cmd->argc = argc;
    cmd->argv = argc ? argv : ((void*)0);
    if (isColorTerm()) cmd->flags |= CLUSTER_MANAGER_CMD_FLAG_COLOR;
}
