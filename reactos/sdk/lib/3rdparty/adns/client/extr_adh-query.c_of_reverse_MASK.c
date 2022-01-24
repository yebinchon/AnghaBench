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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct query_node {int /*<<< orphan*/  qu; int /*<<< orphan*/  owner; } ;
struct optioninfo {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct query_node*) ; 
 scalar_t__ adns_r_none ; 
 scalar_t__ adns_r_txt ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,char const*,scalar_t__,int,struct query_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ads ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  outstanding ; 
 scalar_t__ ov_type ; 
 int /*<<< orphan*/  FUNC4 (struct query_node**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

void FUNC10(const struct optioninfo *oi, const char *arg, const char *arg2) {
  struct query_node *qun;
  int quflags, r;
  struct sockaddr_in sa;

  FUNC3(&sa,0,sizeof(sa));
  sa.sin_family= AF_INET;
  if (!FUNC2(arg,&sa.sin_addr)) FUNC8("invalid IP address %s",arg);

  FUNC4(&qun,&quflags);
  qun->owner= FUNC9(FUNC6(arg) + FUNC6(arg2) + 2);
  FUNC5(qun->owner, "%s %s", arg,arg2);
  r= FUNC1(ads,
			     (struct sockaddr*)&sa, arg2,
			     ov_type == adns_r_none ? adns_r_txt : ov_type,
			     quflags,
			     qun,
			     &qun->qu);
  if (r) FUNC7("adns_submit_reverse",r);

  FUNC0(outstanding,qun);
}