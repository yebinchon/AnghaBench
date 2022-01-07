
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ top; scalar_t__ base; } ;
typedef TYPE_1__ lua_State ;
typedef int MSize ;
typedef int FILE ;


 int LJ_ERR_INVFMT ;
 int LJ_ERR_INVOPT ;
 scalar_t__ LUA_MINSTACK ;
 int clearerr (int *) ;
 scalar_t__ ferror (int *) ;
 int io_file_readall (TYPE_1__*,int *) ;
 int io_file_readlen (TYPE_1__*,int *,int ) ;
 int io_file_readline (TYPE_1__*,int *,int) ;
 int io_file_readnum (TYPE_1__*,int *) ;
 int lj_err_arg (TYPE_1__*,int,int ) ;
 scalar_t__ lj_lib_checkint (TYPE_1__*,int) ;
 int luaL_checkstack (TYPE_1__*,scalar_t__,char*) ;
 int luaL_fileresult (TYPE_1__*,int ,int *) ;
 int setnilV (scalar_t__) ;
 char* strVdata (scalar_t__) ;
 scalar_t__ tvisnumber (scalar_t__) ;
 scalar_t__ tvisstr (scalar_t__) ;

__attribute__((used)) static int io_file_read(lua_State *L, FILE *fp, int start)
{
  int ok, n, nargs = (int)(L->top - L->base) - start;
  clearerr(fp);
  if (nargs == 0) {
    ok = io_file_readline(L, fp, 1);
    n = start+1;
  } else {

    luaL_checkstack(L, nargs+LUA_MINSTACK, "too many arguments");
    ok = 1;
    for (n = start; nargs-- && ok; n++) {
      if (tvisstr(L->base+n)) {
 const char *p = strVdata(L->base+n);
 if (p[0] != '*')
   lj_err_arg(L, n+1, LJ_ERR_INVOPT);
 if (p[1] == 'n')
   ok = io_file_readnum(L, fp);
 else if ((p[1] & ~0x20) == 'L')
   ok = io_file_readline(L, fp, (p[1] == 'l'));
 else if (p[1] == 'a')
   io_file_readall(L, fp);
 else
   lj_err_arg(L, n+1, LJ_ERR_INVFMT);
      } else if (tvisnumber(L->base+n)) {
 ok = io_file_readlen(L, fp, (MSize)lj_lib_checkint(L, n+1));
      } else {
 lj_err_arg(L, n+1, LJ_ERR_INVOPT);
      }
    }
  }
  if (ferror(fp))
    return luaL_fileresult(L, 0, ((void*)0));
  if (!ok)
    setnilV(L->top-1);
  return n - start;
}
