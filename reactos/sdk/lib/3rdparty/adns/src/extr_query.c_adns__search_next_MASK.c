#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  adns_status ;
typedef  TYPE_1__* adns_state ;
typedef  TYPE_2__* adns_query ;
struct TYPE_12__ {int /*<<< orphan*/  used; scalar_t__ buf; } ;
struct TYPE_11__ {int search_doneabs; scalar_t__ search_pos; int /*<<< orphan*/  flags; int /*<<< orphan*/  typei; TYPE_5__ search_vb; scalar_t__ query_dglen; scalar_t__ query_dgram; int /*<<< orphan*/  search_origlen; } ;
struct TYPE_10__ {scalar_t__ nsearchlist; char** searchlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  adns_s_nomemory ; 
 int /*<<< orphan*/  adns_s_nxdomain ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval) ; 

void FUNC5(adns_state ads, adns_query qu, struct timeval now) {
  const char *nextentry;
  adns_status stat;

  if (qu->search_doneabs<0) {
    nextentry= 0;
    qu->search_doneabs= 1;
  } else {
    if (qu->search_pos >= ads->nsearchlist) {
      if (qu->search_doneabs) {
	stat= adns_s_nxdomain; goto x_fail;
	return;
      } else {
	nextentry= 0;
	qu->search_doneabs= 1;
      }
    } else {
      nextentry= ads->searchlist[qu->search_pos++];
    }
  }

  qu->search_vb.used= qu->search_origlen;
  if (nextentry) {
    if (!FUNC1(&qu->search_vb,(byte*)".",1) ||
	!FUNC2(&qu->search_vb,nextentry)) {
      stat= adns_s_nomemory; goto x_fail;
    }
  }

  FUNC3(qu->query_dgram);
  qu->query_dgram= 0; qu->query_dglen= 0;

  FUNC4(ads,qu, (char*)qu->search_vb.buf, qu->search_vb.used, qu->typei, qu->flags, now);
  return;

x_fail:
  FUNC0(qu,stat);
}