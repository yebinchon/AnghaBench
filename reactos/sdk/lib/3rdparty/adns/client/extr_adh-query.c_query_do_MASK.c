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
struct query_node {int /*<<< orphan*/  qu; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct query_node*) ; 
 scalar_t__ adns_r_addr ; 
 scalar_t__ adns_r_none ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,scalar_t__,int,struct query_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ads ; 
 int /*<<< orphan*/  outstanding ; 
 scalar_t__ ov_type ; 
 int /*<<< orphan*/  FUNC2 (struct query_node**,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void FUNC5(const char *domain) {
  struct query_node *qun;
  int quflags, r;

  FUNC2(&qun,&quflags);
  qun->owner= FUNC4(domain);
  r= FUNC1(ads, domain,
		 ov_type == adns_r_none ? adns_r_addr : ov_type,
		 quflags,
		 qun,
		 &qun->qu);
  if (r) FUNC3("adns_submit",r);

  FUNC0(outstanding,qun);
}