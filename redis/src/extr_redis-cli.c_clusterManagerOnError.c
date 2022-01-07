
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ sds ;
struct TYPE_2__ {int * errors; } ;


 int clusterManagerLogErr (char*,char*) ;
 TYPE_1__ cluster_manager ;
 int listAddNodeTail (int *,scalar_t__) ;
 int * listCreate () ;

__attribute__((used)) static void clusterManagerOnError(sds err) {
    if (cluster_manager.errors == ((void*)0))
        cluster_manager.errors = listCreate();
    listAddNodeTail(cluster_manager.errors, err);
    clusterManagerLogErr("%s\n", (char *) err);
}
