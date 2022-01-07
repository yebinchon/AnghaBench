
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_6__ {int name; int port; int ip; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_5__ {int backup_dir; } ;
struct TYPE_7__ {TYPE_1__ cluster_manager_command; } ;


 int assert (int ) ;
 TYPE_3__ config ;
 char* sdscat (char*,char*) ;
 char* sdscatprintf (char*,char*,int ,int ,int ) ;
 int sdslen (char*) ;
 char* sdsnew (int ) ;

__attribute__((used)) static sds clusterManagerGetNodeRDBFilename(clusterManagerNode *node) {
    assert(config.cluster_manager_command.backup_dir);
    sds filename = sdsnew(config.cluster_manager_command.backup_dir);
    if (filename[sdslen(filename) - 1] != '/')
        filename = sdscat(filename, "/");
    filename = sdscatprintf(filename, "redis-node-%s-%d-%s.rdb", node->ip,
                            node->port, node->name);
    return filename;
}
