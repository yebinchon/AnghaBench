
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_16__ {TYPE_4__* ci; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_14__ {int base; } ;
struct TYPE_15__ {TYPE_1__ l; } ;
struct TYPE_17__ {TYPE_2__ u; } ;
struct TYPE_13__ {int p; } ;
typedef int TValue ;
typedef TYPE_4__ CallInfo ;


 int cast_int (int const*) ;
 TYPE_11__* ci_func (TYPE_4__*) ;
 int currentpc (TYPE_4__*) ;
 char* getobjname (int ,int ,int ,char const**) ;
 char* getupvalname (TYPE_4__*,int const*,char const**) ;
 scalar_t__ isLua (TYPE_4__*) ;
 scalar_t__ isinstack (TYPE_4__*,int const*) ;
 char const* luaO_pushfstring (TYPE_3__*,char*,char const*,char const*) ;

__attribute__((used)) static const char *varinfo (lua_State *L, const TValue *o) {
  const char *name = ((void*)0);
  CallInfo *ci = L->ci;
  const char *kind = ((void*)0);
  if (isLua(ci)) {
    kind = getupvalname(ci, o, &name);
    if (!kind && isinstack(ci, o))
      kind = getobjname(ci_func(ci)->p, currentpc(ci),
                        cast_int(o - ci->u.l.base), &name);
  }
  return (kind) ? luaO_pushfstring(L, " (%s '%s')", kind, name) : "";
}
