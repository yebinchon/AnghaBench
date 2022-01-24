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
typedef  int ptrdiff_t ;
struct TYPE_5__ {int level; int src_init; TYPE_1__* capture; int /*<<< orphan*/  L; } ;
struct TYPE_4__ {int len; char const* init; } ;
typedef  TYPE_2__ MatchState ;

/* Variables and functions */
 int CAP_POSITION ; 
 int CAP_UNFINISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC3 (MatchState *ms, int i, const char *s,
                                                    const char *e) {
  if (i >= ms->level) {
    if (i == 0)  /* ms->level == 0, too */
      FUNC2(ms->L, s, e - s);  /* add whole match */
    else
      FUNC0(ms->L, "invalid capture index %%%d", i + 1);
  }
  else {
    ptrdiff_t l = ms->capture[i].len;
    if (l == CAP_UNFINISHED) FUNC0(ms->L, "unfinished capture");
    if (l == CAP_POSITION)
      FUNC1(ms->L, (ms->capture[i].init - ms->src_init) + 1);
    else
      FUNC2(ms->L, ms->capture[i].init, l);
  }
}