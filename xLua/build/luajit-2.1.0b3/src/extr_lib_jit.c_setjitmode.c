
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ base; scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;


 int LJ_ERR_NOJIT ;
 int LUAJIT_MODE_ALLFUNC ;
 int LUAJIT_MODE_ALLSUBFUNC ;
 int LUAJIT_MODE_ENGINE ;
 int LUAJIT_MODE_FUNC ;
 int LUAJIT_MODE_MASK ;
 int LUA_TFUNCTION ;
 scalar_t__ boolV (scalar_t__) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int lj_err_caller (TYPE_1__*,int ) ;
 int luaJIT_setmode (TYPE_1__*,int,int) ;
 scalar_t__ tvisbool (scalar_t__) ;
 scalar_t__ tvisfunc (scalar_t__) ;
 scalar_t__ tvisnil (scalar_t__) ;
 scalar_t__ tvisproto (scalar_t__) ;
 int tvistrue (scalar_t__) ;

__attribute__((used)) static int setjitmode(lua_State *L, int mode)
{
  int idx = 0;
  if (L->base == L->top || tvisnil(L->base)) {
    mode |= LUAJIT_MODE_ENGINE;
  } else {

    if (tvisfunc(L->base) || tvisproto(L->base))
      idx = 1;
    else if (!tvistrue(L->base))
      goto err;
    if (L->base+1 < L->top && tvisbool(L->base+1))
      mode |= boolV(L->base+1) ? LUAJIT_MODE_ALLFUNC : LUAJIT_MODE_ALLSUBFUNC;
    else
      mode |= LUAJIT_MODE_FUNC;
  }
  if (luaJIT_setmode(L, idx, mode) != 1) {
    if ((mode & LUAJIT_MODE_MASK) == LUAJIT_MODE_ENGINE)
      lj_err_caller(L, LJ_ERR_NOJIT);
  err:
    lj_err_argt(L, 1, LUA_TFUNCTION);
  }
  return 0;
}
