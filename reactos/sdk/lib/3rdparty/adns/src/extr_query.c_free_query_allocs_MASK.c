#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef  TYPE_1__ allocnode ;
typedef  TYPE_2__* adns_query ;
struct TYPE_9__ {TYPE_1__* head; } ;
struct TYPE_8__ {TYPE_1__* query_dgram; int /*<<< orphan*/  search_vb; int /*<<< orphan*/  vb; TYPE_6__ allocations; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(adns_query qu) {
  allocnode *an, *ann;

  FUNC2(qu);
  for (an= qu->allocations.head; an; an= ann) { ann= an->next; FUNC3(an); }
  FUNC0(qu->allocations);
  FUNC1(&qu->vb);
  FUNC1(&qu->search_vb);
  FUNC3(qu->query_dgram);
  qu->query_dgram= 0;
}