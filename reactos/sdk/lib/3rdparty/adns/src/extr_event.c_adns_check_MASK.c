#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  adns_query ;
typedef  int /*<<< orphan*/  adns_answer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timeval) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,void**) ; 
 int /*<<< orphan*/  cc_entex ; 
 int FUNC3 (struct timeval*,int /*<<< orphan*/ ) ; 

int FUNC4(adns_state ads,
	       adns_query *query_io,
	       adns_answer **answer_r,
	       void **context_r) {
  struct timeval now;
  int r;

  FUNC1(ads,*query_io,cc_entex);
  r= FUNC3(&now,0);
  if (!r) FUNC0(ads,now);

  r= FUNC2(ads,query_io,answer_r,context_r);
  FUNC1(ads,0,cc_entex);
  return r;
}