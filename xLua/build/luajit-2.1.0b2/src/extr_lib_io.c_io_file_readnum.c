
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ lua_Number ;
typedef scalar_t__ int32_t ;
typedef int cTValue ;
typedef int FILE ;


 scalar_t__ LJ_DUALNUM ;
 int LUA_NUMBER_SCAN ;
 int fscanf (int *,int ,scalar_t__*) ;
 scalar_t__ lj_num2int (scalar_t__) ;
 int setintV (int ,scalar_t__) ;
 int setnilV (int ) ;
 int setnumV (int ,scalar_t__) ;
 int tvismzero (int *) ;

__attribute__((used)) static int io_file_readnum(lua_State *L, FILE *fp)
{
  lua_Number d;
  if (fscanf(fp, LUA_NUMBER_SCAN, &d) == 1) {
    if (LJ_DUALNUM) {
      int32_t i = lj_num2int(d);
      if (d == (lua_Number)i && !tvismzero((cTValue *)&d)) {
 setintV(L->top++, i);
 return 1;
      }
    }
    setnumV(L->top++, d);
    return 1;
  } else {
    setnilV(L->top++);
    return 0;
  }
}
