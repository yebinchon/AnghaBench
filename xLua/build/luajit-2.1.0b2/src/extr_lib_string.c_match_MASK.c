#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ depth; char const* src_init; char const* src_end; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_POSITION ; 
 int /*<<< orphan*/  CAP_UNFINISHED ; 
 int /*<<< orphan*/  LJ_ERR_STRPATB ; 
 int /*<<< orphan*/  LJ_ERR_STRPATX ; 
 scalar_t__ LJ_MAX_XLEVEL ; 
#define  L_ESC 128 
 char* FUNC0 (TYPE_1__*,char const*) ; 
 char* FUNC1 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC7 (TYPE_1__*,char const*,char const*,char const*) ; 
 char* FUNC8 (TYPE_1__*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC10 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const) ; 

__attribute__((used)) static const char *FUNC12(MatchState *ms, const char *s, const char *p)
{
  if (++ms->depth > LJ_MAX_XLEVEL)
    FUNC3(ms->L, LJ_ERR_STRPATX);
  init: /* using goto's to optimize tail recursion */
  switch (*p) {
  case '(':  /* start capture */
    if (*(p+1) == ')')  /* position capture? */
      s = FUNC10(ms, s, p+2, CAP_POSITION);
    else
      s = FUNC10(ms, s, p+1, CAP_UNFINISHED);
    break;
  case ')':  /* end capture */
    s = FUNC1(ms, s, p+1);
    break;
  case L_ESC:
    switch (*(p+1)) {
    case 'b':  /* balanced string? */
      s = FUNC5(ms, s, p+2);
      if (s == NULL) break;
      p+=4;
      goto init;  /* else s = match(ms, s, p+4); */
    case 'f': {  /* frontier? */
      const char *ep; char previous;
      p += 2;
      if (*p != '[')
	FUNC3(ms->L, LJ_ERR_STRPATB);
      ep = FUNC0(ms, p);  /* points to what is next */
      previous = (s == ms->src_init) ? '\0' : *(s-1);
      if (FUNC6(FUNC11(previous), p, ep-1) ||
	 !FUNC6(FUNC11(*s), p, ep-1)) { s = NULL; break; }
      p=ep;
      goto init;  /* else s = match(ms, s, ep); */
      }
    default:
      if (FUNC2(FUNC11(*(p+1)))) {  /* capture results (%0-%9)? */
	s = FUNC4(ms, s, FUNC11(*(p+1)));
	if (s == NULL) break;
	p+=2;
	goto init;  /* else s = match(ms, s, p+2) */
      }
      goto dflt;  /* case default */
    }
    break;
  case '\0':  /* end of pattern */
    break;  /* match succeeded */
  case '$':
    /* is the `$' the last char in pattern? */
    if (*(p+1) != '\0') goto dflt;
    if (s != ms->src_end) s = NULL;  /* check end of string */
    break;
  default: dflt: {  /* it is a pattern item */
    const char *ep = FUNC0(ms, p);  /* points to what is next */
    int m = s<ms->src_end && FUNC9(FUNC11(*s), p, ep);
    switch (*ep) {
    case '?': {  /* optional */
      const char *res;
      if (m && ((res=FUNC12(ms, s+1, ep+1)) != NULL)) {
	s = res;
	break;
      }
      p=ep+1;
      goto init;  /* else s = match(ms, s, ep+1); */
      }
    case '*':  /* 0 or more repetitions */
      s = FUNC7(ms, s, p, ep);
      break;
    case '+':  /* 1 or more repetitions */
      s = (m ? FUNC7(ms, s+1, p, ep) : NULL);
      break;
    case '-':  /* 0 or more repetitions (minimum) */
      s = FUNC8(ms, s, p, ep);
      break;
    default:
      if (m) { s++; p=ep; goto init; }  /* else s = match(ms, s+1, ep); */
      s = NULL;
      break;
    }
    break;
    }
  }
  ms->depth--;
  return s;
}