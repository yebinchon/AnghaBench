#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ used; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ vbuf ;
typedef  int /*<<< orphan*/  typeinfo ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  adns_queryflags ;
typedef  TYPE_2__* adns_query ;
struct TYPE_9__ {int id; TYPE_1__ vb; int /*<<< orphan*/  query_dgram; scalar_t__ query_dglen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  adns_s_nomemory ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC5(adns_state ads, adns_query qu,
			 const typeinfo *typei, vbuf *qumsg_vb, int id,
			 adns_queryflags flags, struct timeval now) {
  /* Fills in the query message in for a previously-allocated query,
   * and submits it.  Cannot fail.  Takes over the memory for qumsg_vb.
   */

  qu->vb= *qumsg_vb;
  FUNC2(qumsg_vb);

  qu->query_dgram= FUNC3( (size_t) qu->vb.used);
  if (!qu->query_dgram) { FUNC0(qu,adns_s_nomemory); return; }

  qu->id= id;
  qu->query_dglen= qu->vb.used;
  FUNC4(qu->query_dgram,qu->vb.buf,(size_t) qu->vb.used);

  FUNC1(qu,now);
}