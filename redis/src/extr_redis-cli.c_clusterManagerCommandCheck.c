
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int clusterManagerNode ;


 char* CLUSTER_MANAGER_INVALID_HOST_ARG ;
 int clusterManagerCheckCluster (int ) ;
 int clusterManagerLoadInfoFromNode (int *,int ) ;
 int * clusterManagerNewNode (char*,int) ;
 int clusterManagerShowClusterInfo () ;
 int fprintf (int ,char*) ;
 int getClusterHostFromCmdArgs (int,char**,char**,int*) ;
 int stderr ;

__attribute__((used)) static int clusterManagerCommandCheck(int argc, char **argv) {
    int port = 0;
    char *ip = ((void*)0);
    if (!getClusterHostFromCmdArgs(argc, argv, &ip, &port)) goto invalid_args;
    clusterManagerNode *node = clusterManagerNewNode(ip, port);
    if (!clusterManagerLoadInfoFromNode(node, 0)) return 0;
    clusterManagerShowClusterInfo();
    return clusterManagerCheckCluster(0);
invalid_args:
    fprintf(stderr, CLUSTER_MANAGER_INVALID_HOST_ARG);
    return 0;
}
