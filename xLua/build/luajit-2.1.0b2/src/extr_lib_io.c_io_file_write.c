
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * base; int * top; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
typedef scalar_t__ MSize ;
typedef int FILE ;


 int GCROOT_IO_OUTPUT ;
 int IOSTDF_UD (TYPE_1__*,int ) ;
 scalar_t__ LJ_52 ;
 int LUA_TSTRING ;
 scalar_t__ fwrite (char const*,int,scalar_t__,int *) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 char* lj_strfmt_wstrnum (TYPE_1__*,int *,scalar_t__*) ;
 int luaL_fileresult (TYPE_1__*,int,int *) ;
 int setudataV (TYPE_1__*,int *,int ) ;

__attribute__((used)) static int io_file_write(lua_State *L, FILE *fp, int start)
{
  cTValue *tv;
  int status = 1;
  for (tv = L->base+start; tv < L->top; tv++) {
    MSize len;
    const char *p = lj_strfmt_wstrnum(L, tv, &len);
    if (!p)
      lj_err_argt(L, (int)(tv - L->base) + 1, LUA_TSTRING);
    status = status && (fwrite(p, 1, len, fp) == len);
  }
  if (LJ_52 && status) {
    L->top = L->base+1;
    if (start == 0)
      setudataV(L, L->base, IOSTDF_UD(L, GCROOT_IO_OUTPUT));
    return 1;
  }
  return luaL_fileresult(L, status, ((void*)0));
}
