
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* p_end; int L; } ;
typedef TYPE_1__ MatchState ;



 int luaL_error (int ,char*) ;

__attribute__((used)) static const char *classend (MatchState *ms, const char *p) {
  switch (*p++) {
    case 128: {
      if (p == ms->p_end)
        luaL_error(ms->L, "malformed pattern (ends with '%%')");
      return p+1;
    }
    case '[': {
      if (*p == '^') p++;
      do {
        if (p == ms->p_end)
          luaL_error(ms->L, "malformed pattern (missing ']')");
        if (*(p++) == 128 && p < ms->p_end)
          p++;
      } while (*p != ']');
      return p+1;
    }
    default: {
      return p;
    }
  }
}
