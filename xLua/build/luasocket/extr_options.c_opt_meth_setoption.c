
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int p_socket ;
typedef TYPE_1__* p_opt ;
typedef int lua_State ;
struct TYPE_3__ {int (* func ) (int *,int ) ;int name; } ;


 int luaL_argerror (int *,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int stub1 (int *,int ) ;

int opt_meth_setoption(lua_State *L, p_opt opt, p_socket ps)
{
    const char *name = luaL_checkstring(L, 2);
    while (opt->name && strcmp(name, opt->name))
        opt++;
    if (!opt->func) {
        char msg[45];
        sprintf(msg, "unsupported option `%.35s'", name);
        luaL_argerror(L, 2, msg);
    }
    return opt->func(L, ps);
}
