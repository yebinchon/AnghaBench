
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int mallctl_cmd (char*) ;

__attribute__((used)) static int
ldumpheap(lua_State *L) {
 mallctl_cmd("prof.dump");
 return 0;
}
