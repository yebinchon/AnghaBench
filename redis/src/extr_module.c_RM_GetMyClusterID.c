
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* cluster; int cluster_enabled; } ;
struct TYPE_5__ {TYPE_1__* myself; } ;
struct TYPE_4__ {char const* name; } ;


 TYPE_3__ server ;

const char *RM_GetMyClusterID(void) {
    if (!server.cluster_enabled) return ((void*)0);
    return server.cluster->myself->name;
}
