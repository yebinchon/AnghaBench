
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int typename ;
typedef int lua_State ;


 int ltype ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushstring (int *,char const*) ;

__attribute__((used)) static void
typeclosure(lua_State *L) {
 static const char * typename[] = {
  "number",
  "boolean",
  "table",
  "nil",
  "string",
  "binary",
  "objectid",
  "timestamp",
  "date",
  "regex",
  "minkey",
  "maxkey",
  "unsupported",
 };
 int i;
 int n = sizeof(typename)/sizeof(typename[0]);
 for (i=0;i<n;i++) {
  lua_pushstring(L,typename[i]);
 }
 lua_pushcclosure(L, ltype, n);
}
