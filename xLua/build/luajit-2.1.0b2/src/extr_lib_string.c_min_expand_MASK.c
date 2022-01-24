#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* src_end; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 

__attribute__((used)) static const char *FUNC3(MatchState *ms, const char *s,
			      const char *p, const char *ep)
{
  for (;;) {
    const char *res = FUNC0(ms, s, ep+1);
    if (res != NULL)
      return res;
    else if (s<ms->src_end && FUNC1(FUNC2(*s), p, ep))
      s++;  /* try with one more repetition */
    else
      return NULL;
  }
}