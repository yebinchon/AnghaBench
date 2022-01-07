
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;




 int lua_type (int *,int) ;
 int mark_function (int *,int *) ;
 int mark_table (int *,int *) ;

__attribute__((used)) static void mark_object(lua_State *L, lua_State *dL) {
 switch (lua_type(L, -1)) {
 case 128:
  mark_table(L, dL);
  break;
 case 129:
  mark_function(L, dL);
  break;
 default:
  break;
 }
}
