#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  adns_state ;
typedef  int /*<<< orphan*/  adns_query ;
struct TYPE_4__ {char** str; } ;
struct TYPE_5__ {scalar_t__ status; TYPE_1__ rrs; } ;
typedef  TYPE_2__ adns_answer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adns_if_debug ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int adns_qf_cname_loose ; 
 int adns_qf_quoteok_cname ; 
 int /*<<< orphan*/  adns_r_ptr ; 
 scalar_t__ adns_s_ok ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (char*,char) ; 

int FUNC9(int argc, char *argv[]) {
  adns_state adns;
  adns_query query;
  adns_answer *answer;

  progname= FUNC8(*argv, '/');
  if (progname)
    progname++;
  else
    progname= *argv;

  if (argc != 2) {
    FUNC6(stderr, "usage: %s <domain>\n", progname);
    FUNC5(1);
  }

  errno= FUNC2(&adns, adns_if_debug, 0);
  if (errno) FUNC0("adns_init");

  errno= FUNC3(adns, argv[1], adns_r_ptr,
		     adns_qf_quoteok_cname|adns_qf_cname_loose,
		     NULL, &query);
  if (errno) FUNC0("adns_submit");

  errno= FUNC4(adns, &query, &answer, NULL);
  if (errno) FUNC0("adns_init");

  FUNC7("%s\n", answer->status == adns_s_ok ? *answer->rrs.str : "dunno");

  FUNC1(adns);

  return 0;
}