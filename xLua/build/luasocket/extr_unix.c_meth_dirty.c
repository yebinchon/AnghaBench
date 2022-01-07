
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* p_unix ;
typedef int lua_State ;
struct TYPE_2__ {int buf; } ;


 int auxiliar_checkgroup (int *,char*,int) ;
 int buffer_isempty (int *) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int meth_dirty(lua_State *L) {
    p_unix un = (p_unix) auxiliar_checkgroup(L, "unix{any}", 1);
    lua_pushboolean(L, !buffer_isempty(&un->buf));
    return 1;
}
