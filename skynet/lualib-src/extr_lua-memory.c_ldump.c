
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int dump_c_mem () ;

__attribute__((used)) static int
ldump(lua_State *L) {
 dump_c_mem();

 return 0;
}
