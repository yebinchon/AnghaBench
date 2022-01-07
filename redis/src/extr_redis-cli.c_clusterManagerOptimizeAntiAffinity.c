
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int clusterManagerNodeArray ;
struct TYPE_10__ {char* replicate; int dirty; } ;
typedef TYPE_2__ clusterManagerNode ;
struct TYPE_12__ {TYPE_5__* nodes; } ;
struct TYPE_11__ {int len; } ;


 int CLUSTER_MANAGER_LOG_LVL_SUCCESS ;
 int CLUSTER_MANAGER_LOG_LVL_WARN ;
 int clusterManagerGetAntiAffinityScore (int *,int,TYPE_2__***,int*) ;
 int clusterManagerLog (int,char*,char*) ;
 int clusterManagerLogInfo (char*) ;
 TYPE_7__ cluster_manager ;
 TYPE_1__* listNext (int *) ;
 int listRewind (TYPE_5__*,int *) ;
 int rand () ;
 int srand (int ) ;
 int time (int *) ;
 TYPE_2__** zcalloc (int) ;
 int zfree (TYPE_2__**) ;

__attribute__((used)) static void clusterManagerOptimizeAntiAffinity(clusterManagerNodeArray *ipnodes,
    int ip_count)
{
    clusterManagerNode **offenders = ((void*)0);
    int score = clusterManagerGetAntiAffinityScore(ipnodes, ip_count,
                                                   ((void*)0), ((void*)0));
    if (score == 0) goto cleanup;
    clusterManagerLogInfo(">>> Trying to optimize slaves allocation "
                          "for anti-affinity\n");
    int node_len = cluster_manager.nodes->len;
    int maxiter = 500 * node_len;
    srand(time(((void*)0)));
    while (maxiter > 0) {
        int offending_len = 0;
        if (offenders != ((void*)0)) {
            zfree(offenders);
            offenders = ((void*)0);
        }
        score = clusterManagerGetAntiAffinityScore(ipnodes,
                                                   ip_count,
                                                   &offenders,
                                                   &offending_len);
        if (score == 0) break;



        int rand_idx = rand() % offending_len;
        clusterManagerNode *first = offenders[rand_idx],
                           *second = ((void*)0);
        clusterManagerNode **other_replicas = zcalloc((node_len - 1) *
                                                      sizeof(*other_replicas));
        int other_replicas_count = 0;
        listIter li;
        listNode *ln;
        listRewind(cluster_manager.nodes, &li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            clusterManagerNode *n = ln->value;
            if (n != first && n->replicate != ((void*)0))
                other_replicas[other_replicas_count++] = n;
        }
        if (other_replicas_count == 0) {
            zfree(other_replicas);
            break;
        }
        rand_idx = rand() % other_replicas_count;
        second = other_replicas[rand_idx];
        char *first_master = first->replicate,
             *second_master = second->replicate;
        first->replicate = second_master, first->dirty = 1;
        second->replicate = first_master, second->dirty = 1;
        int new_score = clusterManagerGetAntiAffinityScore(ipnodes,
                                                           ip_count,
                                                           ((void*)0), ((void*)0));



        if (new_score > score) {
            first->replicate = first_master;
            second->replicate = second_master;
        }
        zfree(other_replicas);
        maxiter--;
    }
    score = clusterManagerGetAntiAffinityScore(ipnodes, ip_count, ((void*)0), ((void*)0));
    char *msg;
    int perfect = (score == 0);
    int log_level = (perfect ? CLUSTER_MANAGER_LOG_LVL_SUCCESS :
                               CLUSTER_MANAGER_LOG_LVL_WARN);
    if (perfect) msg = "[OK] Perfect anti-affinity obtained!";
    else if (score >= 10000)
        msg = ("[WARNING] Some slaves are in the same host as their master");
    else
        msg=("[WARNING] Some slaves of the same master are in the same host");
    clusterManagerLog(log_level, "%s\n", msg);
cleanup:
    zfree(offenders);
}
