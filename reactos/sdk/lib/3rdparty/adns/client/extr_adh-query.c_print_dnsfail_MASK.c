#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct query_node {int dummy; } ;
typedef  scalar_t__ adns_status ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ adns_answer ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ adns_s_nodata ; 
 scalar_t__ adns_s_nxdomain ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ fmt_inline ; 
 scalar_t__ fmt_simple ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ ov_format ; 
 char* FUNC6 (struct query_node*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct query_node*,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(adns_status st, struct query_node *qun, adns_answer *answer) {
  int r;
  const char *typename, *statusstring;
  adns_status ist;

  if (ov_format == fmt_inline) {
    if (FUNC4("; failed ",stdout) == EOF) FUNC5();
    FUNC7(st,qun,answer);
    return;
  }
  FUNC2(ov_format == fmt_simple);
  if (st == adns_s_nxdomain) {
    r= FUNC3(stderr,"%s does not exist\n", FUNC6(qun,answer));
  } else {
    ist= FUNC0(answer->type, &typename, 0,0,0,0);
    if (st == adns_s_nodata) {
      r= FUNC3(stderr,"%s has no %s record\n", FUNC6(qun,answer), typename);
    } else {
      statusstring= FUNC1(st);
      r= FUNC3(stderr,"Error during DNS %s lookup for %s: %s\n",
		 typename, FUNC6(qun,answer), statusstring);
    }
  }
  if (r == EOF) FUNC8("write error message to stderr",errno);
}