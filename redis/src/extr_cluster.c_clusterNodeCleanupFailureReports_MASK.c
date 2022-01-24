#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mstime_t ;
struct TYPE_8__ {TYPE_2__* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_9__ {scalar_t__ time; } ;
typedef  TYPE_2__ clusterNodeFailReport ;
struct TYPE_10__ {int /*<<< orphan*/ * fail_reports; } ;
typedef  TYPE_3__ clusterNode ;
struct TYPE_11__ {scalar_t__ cluster_node_timeout; } ;

/* Variables and functions */
 scalar_t__ CLUSTER_FAIL_REPORT_VALIDITY_MULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 TYPE_4__ server ; 

void FUNC4(clusterNode *node) {
    list *l = node->fail_reports;
    listNode *ln;
    listIter li;
    clusterNodeFailReport *fr;
    mstime_t maxtime = server.cluster_node_timeout *
                     CLUSTER_FAIL_REPORT_VALIDITY_MULT;
    mstime_t now = FUNC3();

    FUNC2(l,&li);
    while ((ln = FUNC1(&li)) != NULL) {
        fr = ln->value;
        if (now - fr->time > maxtime) FUNC0(l,ln);
    }
}