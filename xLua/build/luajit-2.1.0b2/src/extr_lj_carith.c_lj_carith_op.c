
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_12__ {int tmptv2; } ;
typedef int MMS ;
typedef int CTState ;
typedef int CDArith ;


 TYPE_9__* G (TYPE_1__*) ;
 scalar_t__ carith_checkarg (TYPE_1__*,int *,int *) ;
 scalar_t__ carith_int64 (TYPE_1__*,int *,int *,int ) ;
 scalar_t__ carith_ptr (TYPE_1__*,int *,int *,int ) ;
 int copyTV (TYPE_1__*,int *,scalar_t__) ;
 int * ctype_cts (TYPE_1__*) ;
 int lj_carith_meta (TYPE_1__*,int *,int *,int ) ;

int lj_carith_op(lua_State *L, MMS mm)
{
  CTState *cts = ctype_cts(L);
  CDArith ca;
  if (carith_checkarg(L, cts, &ca)) {
    if (carith_int64(L, cts, &ca, mm) || carith_ptr(L, cts, &ca, mm)) {
      copyTV(L, &G(L)->tmptv2, L->top-1);
      return 1;
    }
  }
  return lj_carith_meta(L, cts, &ca, mm);
}
