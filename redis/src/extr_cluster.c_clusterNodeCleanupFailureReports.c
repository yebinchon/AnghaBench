
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
typedef int list ;
struct TYPE_9__ {scalar_t__ time; } ;
typedef TYPE_2__ clusterNodeFailReport ;
struct TYPE_10__ {int * fail_reports; } ;
typedef TYPE_3__ clusterNode ;
struct TYPE_11__ {scalar_t__ cluster_node_timeout; } ;


 scalar_t__ CLUSTER_FAIL_REPORT_VALIDITY_MULT ;
 int listDelNode (int *,TYPE_1__*) ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int *,int *) ;
 scalar_t__ mstime () ;
 TYPE_4__ server ;

void clusterNodeCleanupFailureReports(clusterNode *node) {
    list *l = node->fail_reports;
    listNode *ln;
    listIter li;
    clusterNodeFailReport *fr;
    mstime_t maxtime = server.cluster_node_timeout *
                     CLUSTER_FAIL_REPORT_VALIDITY_MULT;
    mstime_t now = mstime();

    listRewind(l,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        fr = ln->value;
        if (now - fr->time > maxtime) listDelNode(l,ln);
    }
}
