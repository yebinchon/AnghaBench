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
typedef  TYPE_1__* adns_state ;
struct TYPE_5__ {unsigned long searchndots; int /*<<< orphan*/  iflags; } ;

/* Variables and functions */
 unsigned long INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,char*,char const*,int,int,char const*) ; 
 int /*<<< orphan*/  adns_if_checkc_entex ; 
 int /*<<< orphan*/  adns_if_checkc_freq ; 
 int /*<<< orphan*/  adns_if_debug ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 scalar_t__ FUNC3 (char const**,char const**,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 unsigned long FUNC5 (char const*,char**,int) ; 

__attribute__((used)) static void FUNC6(adns_state ads, const char *fn, int lno, const char *buf) {
  const char *word;
  char *ep;
  unsigned long v;
  int l;

  if (!buf) return;

  while (FUNC3(&buf,&word,&l)) {
    if (l==5 && !FUNC2(word,"debug",5)) {
      ads->iflags |= adns_if_debug;
      continue;
    }
    if (l>=6 && !FUNC2(word,"ndots:",6)) {
      v= FUNC5(word+6,&ep,10);
      if (l==6 || ep != word+l || v > INT_MAX) {
	FUNC1(ads,fn,lno,"option `%.*s' malformed or has bad value",l,word);
	continue;
      }
      ads->searchndots= v;
      continue;
    }
    if (l>=12 && !FUNC2(word,"adns_checkc:",12)) {
      if (!FUNC4(word+12,"none")) {
	ads->iflags &= ~adns_if_checkc_freq;
	ads->iflags |= adns_if_checkc_entex;
      } else if (!FUNC4(word+12,"entex")) {
	ads->iflags &= ~adns_if_checkc_freq;
	ads->iflags |= adns_if_checkc_entex;
      } else if (!FUNC4(word+12,"freq")) {
	ads->iflags |= adns_if_checkc_freq;
      } else {
	FUNC1(ads,fn,lno, "option adns_checkc has bad value `%s' "
		       "(must be none, entex or freq", word+12);
      }
      continue;
    }
    FUNC0(ads,-1,0,"%s:%d: unknown option `%.*s'", fn,lno, l,word);
  }
}