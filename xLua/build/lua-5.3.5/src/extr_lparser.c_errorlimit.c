
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int l_noret ;
struct TYPE_7__ {int * L; } ;
struct TYPE_6__ {TYPE_3__* ls; TYPE_1__* f; } ;
struct TYPE_5__ {int linedefined; } ;
typedef TYPE_2__ FuncState ;


 char* luaO_pushfstring (int *,char*,...) ;
 int luaX_syntaxerror (TYPE_3__*,char const*) ;

__attribute__((used)) static l_noret errorlimit (FuncState *fs, int limit, const char *what) {
  lua_State *L = fs->ls->L;
  const char *msg;
  int line = fs->f->linedefined;
  const char *where = (line == 0)
                      ? "main function"
                      : luaO_pushfstring(L, "function at line %d", line);
  msg = luaO_pushfstring(L, "too many %s (limit is %d) in %s",
                             what, limit, where);
  luaX_syntaxerror(fs->ls, msg);
}
