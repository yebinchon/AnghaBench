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
struct TYPE_6__ {int level; TYPE_1__* capture; int /*<<< orphan*/  L; } ;
struct TYPE_5__ {char const* init; int len; } ;
typedef  TYPE_2__ MatchState ;

/* Variables and functions */
 int LUA_MAXCAPTURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (TYPE_2__*,char const*,char const*) ; 

__attribute__((used)) static const char *FUNC2 (MatchState *ms, const char *s,
                                    const char *p, int what) {
  const char *res;
  int level = ms->level;
  if (level >= LUA_MAXCAPTURES) FUNC0(ms->L, "too many captures");
  ms->capture[level].init = s;
  ms->capture[level].len = what;
  ms->level = level+1;
  if ((res=FUNC1(ms, s, p)) == NULL)  /* match failed? */
    ms->level--;  /* undo capture */
  return res;
}