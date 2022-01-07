
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ depth; char const* src_init; char const* src_end; int L; } ;
typedef TYPE_1__ MatchState ;


 int CAP_POSITION ;
 int CAP_UNFINISHED ;
 int LJ_ERR_STRPATB ;
 int LJ_ERR_STRPATX ;
 scalar_t__ LJ_MAX_XLEVEL ;

 char* classend (TYPE_1__*,char const*) ;
 char* end_capture (TYPE_1__*,char const*,char const*) ;
 int lj_char_isdigit (int ) ;
 int lj_err_caller (int ,int ) ;
 char* match_capture (TYPE_1__*,char const*,int ) ;
 char* matchbalance (TYPE_1__*,char const*,char const*) ;
 int matchbracketclass (int ,char const*,char const*) ;
 char* max_expand (TYPE_1__*,char const*,char const*,char const*) ;
 char* min_expand (TYPE_1__*,char const*,char const*,char const*) ;
 int singlematch (int ,char const*,char const*) ;
 char* start_capture (TYPE_1__*,char const*,char const*,int ) ;
 int uchar (char const) ;

__attribute__((used)) static const char *match(MatchState *ms, const char *s, const char *p)
{
  if (++ms->depth > LJ_MAX_XLEVEL)
    lj_err_caller(ms->L, LJ_ERR_STRPATX);
  init:
  switch (*p) {
  case '(':
    if (*(p+1) == ')')
      s = start_capture(ms, s, p+2, CAP_POSITION);
    else
      s = start_capture(ms, s, p+1, CAP_UNFINISHED);
    break;
  case ')':
    s = end_capture(ms, s, p+1);
    break;
  case 128:
    switch (*(p+1)) {
    case 'b':
      s = matchbalance(ms, s, p+2);
      if (s == ((void*)0)) break;
      p+=4;
      goto init;
    case 'f': {
      const char *ep; char previous;
      p += 2;
      if (*p != '[')
 lj_err_caller(ms->L, LJ_ERR_STRPATB);
      ep = classend(ms, p);
      previous = (s == ms->src_init) ? '\0' : *(s-1);
      if (matchbracketclass(uchar(previous), p, ep-1) ||
  !matchbracketclass(uchar(*s), p, ep-1)) { s = ((void*)0); break; }
      p=ep;
      goto init;
      }
    default:
      if (lj_char_isdigit(uchar(*(p+1)))) {
 s = match_capture(ms, s, uchar(*(p+1)));
 if (s == ((void*)0)) break;
 p+=2;
 goto init;
      }
      goto dflt;
    }
    break;
  case '\0':
    break;
  case '$':

    if (*(p+1) != '\0') goto dflt;
    if (s != ms->src_end) s = ((void*)0);
    break;
  default: dflt: {
    const char *ep = classend(ms, p);
    int m = s<ms->src_end && singlematch(uchar(*s), p, ep);
    switch (*ep) {
    case '?': {
      const char *res;
      if (m && ((res=match(ms, s+1, ep+1)) != ((void*)0))) {
 s = res;
 break;
      }
      p=ep+1;
      goto init;
      }
    case '*':
      s = max_expand(ms, s, p, ep);
      break;
    case '+':
      s = (m ? max_expand(ms, s+1, p, ep) : ((void*)0));
      break;
    case '-':
      s = min_expand(ms, s, p, ep);
      break;
    default:
      if (m) { s++; p=ep; goto init; }
      s = ((void*)0);
      break;
    }
    break;
    }
  }
  ms->depth--;
  return s;
}
