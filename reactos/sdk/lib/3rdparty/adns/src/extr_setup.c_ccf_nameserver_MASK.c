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
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  adns_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct in_addr) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_addr) ; 

__attribute__((used)) static void FUNC5(adns_state ads, const char *fn, int lno, const char *buf) {
  struct in_addr ia;

  if (!FUNC3(buf,&ia)) {
    FUNC2(ads,fn,lno,"invalid nameserver address `%s'",buf);
    return;
  }
  FUNC1(ads,-1,0,"using nameserver %s",FUNC4(ia));
  FUNC0(ads,ia);
}