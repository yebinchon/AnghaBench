
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* src_end; int L; } ;
typedef TYPE_1__ MatchState ;


 int LJ_ERR_STRPATU ;
 int lj_err_caller (int ,int ) ;

__attribute__((used)) static const char *matchbalance(MatchState *ms, const char *s, const char *p)
{
  if (*p == 0 || *(p+1) == 0)
    lj_err_caller(ms->L, LJ_ERR_STRPATU);
  if (*s != *p) {
    return ((void*)0);
  } else {
    int b = *p;
    int e = *(p+1);
    int cont = 1;
    while (++s < ms->src_end) {
      if (*s == e) {
 if (--cont == 0) return s+1;
      } else if (*s == b) {
 cont++;
      }
    }
  }
  return ((void*)0);
}
