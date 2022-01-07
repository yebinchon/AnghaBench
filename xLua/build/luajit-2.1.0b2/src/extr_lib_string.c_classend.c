
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int L; } ;
typedef TYPE_1__ MatchState ;


 int LJ_ERR_STRPATE ;
 int LJ_ERR_STRPATM ;

 int lj_err_caller (int ,int ) ;

__attribute__((used)) static const char *classend(MatchState *ms, const char *p)
{
  switch (*p++) {
  case 128:
    if (*p == '\0')
      lj_err_caller(ms->L, LJ_ERR_STRPATE);
    return p+1;
  case '[':
    if (*p == '^') p++;
    do {
      if (*p == '\0')
 lj_err_caller(ms->L, LJ_ERR_STRPATM);
      if (*(p++) == 128 && *p != '\0')
 p++;
    } while (*p != ']');
    return p+1;
  default:
    return p;
  }
}
