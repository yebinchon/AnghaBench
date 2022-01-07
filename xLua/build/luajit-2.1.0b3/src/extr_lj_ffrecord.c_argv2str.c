
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int L; } ;
typedef TYPE_1__ jit_State ;
typedef int TValue ;
typedef int GCstr ;


 scalar_t__ LJ_LIKELY (int ) ;
 int LJ_TRERR_BADTYPE ;
 int * lj_strfmt_number (int ,int *) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int setstrV (int ,int *,int *) ;
 int * strV (int *) ;
 int tvisnumber (int *) ;
 int tvisstr (int *) ;

__attribute__((used)) static GCstr *argv2str(jit_State *J, TValue *o)
{
  if (LJ_LIKELY(tvisstr(o))) {
    return strV(o);
  } else {
    GCstr *s;
    if (!tvisnumber(o))
      lj_trace_err(J, LJ_TRERR_BADTYPE);
    s = lj_strfmt_number(J->L, o);
    setstrV(J->L, o, s);
    return s;
  }
}
