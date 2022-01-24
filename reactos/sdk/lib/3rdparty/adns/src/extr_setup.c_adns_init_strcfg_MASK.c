#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* adns_state ;
typedef  int /*<<< orphan*/  adns_initflags ;
struct TYPE_8__ {int configerrno; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cc_entex ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,char*) ; 

int FUNC5(adns_state *ads_r, adns_initflags flags,
		     FILE *diagfile, const char *configtext) {
  adns_state ads;
  int r;

  r= FUNC2(&ads, flags, diagfile);  if (r) return r;

  FUNC4(ads,configtext,"<supplied configuration text>");
  if (ads->configerrno) {
    r= ads->configerrno;
    FUNC1(ads);
    return r;
  }

  r= FUNC3(ads);  if (r) return r;
  FUNC0(ads,0,cc_entex);
  *ads_r= ads;
  return 0;
}