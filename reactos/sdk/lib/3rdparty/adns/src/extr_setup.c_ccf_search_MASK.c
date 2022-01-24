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
struct TYPE_5__ {int nsearchlist; char** searchlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 scalar_t__ FUNC4 (char const**,char const**,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(adns_state ads, const char *fn, int lno, const char *buf) {
  const char *bufp, *word;
  char *newchars, **newptrs, **pp;
  int count, tl, l;

  if (!buf) return;

  bufp= buf;
  count= 0;
  tl= 0;
  while (FUNC4(&bufp,&word,&l)) { count++; tl += l+1; }

  newptrs= FUNC2(sizeof(char*)*count);  if (!newptrs) { FUNC5(ads,errno); return; }
  newchars= FUNC2(tl);  if (!newchars) { FUNC5(ads,errno); FUNC0(newptrs); return; }

  bufp= buf;
  pp= newptrs;
  while (FUNC4(&bufp,&word,&l)) {
    *pp++= newchars;
    FUNC3(newchars,word,l);
    newchars += l;
    *newchars++ = 0;
  }

  FUNC1(ads);
  ads->nsearchlist= count;
  ads->searchlist= newptrs;
}