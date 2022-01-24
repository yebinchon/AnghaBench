#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char const* p_end; char const* src_end; char const* src_init; int /*<<< orphan*/  matchdepth; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_POSITION ; 
 int /*<<< orphan*/  CAP_UNFINISHED ; 
#define  L_ESC 128 
 char* FUNC0 (TYPE_1__*,char const*) ; 
 char* FUNC1 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC6 (TYPE_1__*,char const*,char const*,char const*) ; 
 char* FUNC7 (TYPE_1__*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,char const*,char const*) ; 
 char* FUNC9 (TYPE_1__*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const) ; 

__attribute__((used)) static const char *FUNC11 (MatchState *ms, const char *s, const char *p) {
  if (ms->matchdepth-- == 0)
    FUNC2(ms->L, "pattern too complex");
  init: /* using goto's to optimize tail recursion */
  if (p != ms->p_end) {  /* end of pattern? */
    switch (*p) {
      case '(': {  /* start capture */
        if (*(p + 1) == ')')  /* position capture? */
          s = FUNC9(ms, s, p + 2, CAP_POSITION);
        else
          s = FUNC9(ms, s, p + 1, CAP_UNFINISHED);
        break;
      }
      case ')': {  /* end capture */
        s = FUNC1(ms, s, p + 1);
        break;
      }
      case '$': {
        if ((p + 1) != ms->p_end)  /* is the '$' the last char in pattern? */
          goto dflt;  /* no; go to default */
        s = (s == ms->src_end) ? s : NULL;  /* check end of string */
        break;
      }
      case L_ESC: {  /* escaped sequences not in the format class[*+?-]? */
        switch (*(p + 1)) {
          case 'b': {  /* balanced string? */
            s = FUNC4(ms, s, p + 2);
            if (s != NULL) {
              p += 4; goto init;  /* return match(ms, s, p + 4); */
            }  /* else fail (s == NULL) */
            break;
          }
          case 'f': {  /* frontier? */
            const char *ep; char previous;
            p += 2;
            if (*p != '[')
              FUNC2(ms->L, "missing '[' after '%%f' in pattern");
            ep = FUNC0(ms, p);  /* points to what is next */
            previous = (s == ms->src_init) ? '\0' : *(s - 1);
            if (!FUNC5(FUNC10(previous), p, ep - 1) &&
               FUNC5(FUNC10(*s), p, ep - 1)) {
              p = ep; goto init;  /* return match(ms, s, ep); */
            }
            s = NULL;  /* match failed */
            break;
          }
          case '0': case '1': case '2': case '3':
          case '4': case '5': case '6': case '7':
          case '8': case '9': {  /* capture results (%0-%9)? */
            s = FUNC3(ms, s, FUNC10(*(p + 1)));
            if (s != NULL) {
              p += 2; goto init;  /* return match(ms, s, p + 2) */
            }
            break;
          }
          default: goto dflt;
        }
        break;
      }
      default: dflt: {  /* pattern class plus optional suffix */
        const char *ep = FUNC0(ms, p);  /* points to optional suffix */
        /* does not match at least once? */
        if (!FUNC8(ms, s, p, ep)) {
          if (*ep == '*' || *ep == '?' || *ep == '-') {  /* accept empty? */
            p = ep + 1; goto init;  /* return match(ms, s, ep + 1); */
          }
          else  /* '+' or no suffix */
            s = NULL;  /* fail */
        }
        else {  /* matched once */
          switch (*ep) {  /* handle optional suffix */
            case '?': {  /* optional */
              const char *res;
              if ((res = FUNC11(ms, s + 1, ep + 1)) != NULL)
                s = res;
              else {
                p = ep + 1; goto init;  /* else return match(ms, s, ep + 1); */
              }
              break;
            }
            case '+':  /* 1 or more repetitions */
              s++;  /* 1 match already done */
              /* FALLTHROUGH */
            case '*':  /* 0 or more repetitions */
              s = FUNC6(ms, s, p, ep);
              break;
            case '-':  /* 0 or more repetitions (minimum) */
              s = FUNC7(ms, s, p, ep);
              break;
            default:  /* no suffix */
              s++; p = ep; goto init;  /* return match(ms, s + 1, ep); */
          }
        }
        break;
      }
    }
  }
  ms->matchdepth++;
  return s;
}