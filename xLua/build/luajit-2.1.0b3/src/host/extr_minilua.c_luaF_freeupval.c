
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int value; } ;
struct TYPE_7__ {TYPE_1__ u; int * v; } ;
typedef TYPE_2__ UpVal ;


 int luaM_free (int *,TYPE_2__*) ;
 int unlinkupval (TYPE_2__*) ;

__attribute__((used)) static void luaF_freeupval(lua_State*L,UpVal*uv){
if(uv->v!=&uv->u.value)
unlinkupval(uv);
luaM_free(L,uv);
}
