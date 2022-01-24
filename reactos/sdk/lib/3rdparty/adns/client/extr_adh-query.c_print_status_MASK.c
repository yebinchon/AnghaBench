#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ show_cname; } ;
struct query_node {TYPE_1__ pqfr; } ;
typedef  int adns_status ;
struct TYPE_6__ {char* cname; } ;
typedef  TYPE_2__ adns_answer ;

/* Variables and functions */
 scalar_t__ EOF ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct query_node*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char) ; 

__attribute__((used)) static void FUNC9(adns_status st, struct query_node *qun, adns_answer *answer) {
  const char *statustypeabbrev, *statusabbrev, *statusstring;

  statustypeabbrev= FUNC1(st);
  statusabbrev= FUNC0(st);
  statusstring= FUNC2(st);
  FUNC3(!FUNC8(statusstring,'"'));

  if (FUNC7("%s %d %s ", statustypeabbrev, st, statusabbrev)
      == EOF) FUNC4();
  FUNC5(qun,answer);
  if (qun->pqfr.show_cname)
    FUNC6(answer->cname ? answer->cname : "$");
  if (FUNC7("\"%s\"\n", statusstring) == EOF) FUNC4();
}