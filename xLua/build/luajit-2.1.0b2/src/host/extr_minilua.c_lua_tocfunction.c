
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int * lua_CFunction ;
struct TYPE_3__ {int * f; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
typedef int StkId ;


 TYPE_2__* clvalue (int ) ;
 int index2adr (int *,int) ;
 int iscfunction (int ) ;

__attribute__((used)) static lua_CFunction lua_tocfunction(lua_State*L,int idx){
StkId o=index2adr(L,idx);
return(!iscfunction(o))?((void*)0):clvalue(o)->c.f;
}
