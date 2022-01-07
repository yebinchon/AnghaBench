
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int callstatus; int previous; } ;
typedef TYPE_1__ CallInfo ;


 int CIST_FIN ;
 int CIST_TAIL ;
 char const* funcnamefromcode (int *,int ,char const**) ;
 scalar_t__ isLua (int ) ;

__attribute__((used)) static const char *getfuncname (lua_State *L, CallInfo *ci, const char **name) {
  if (ci == ((void*)0))
    return ((void*)0);
  else if (ci->callstatus & CIST_FIN) {
    *name = "__gc";
    return "metamethod";
  }

  else if (!(ci->callstatus & CIST_TAIL) && isLua(ci->previous))
    return funcnamefromcode(L, ci->previous, name);
  else return ((void*)0);
}
