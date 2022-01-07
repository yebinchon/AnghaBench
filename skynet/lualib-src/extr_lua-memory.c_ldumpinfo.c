
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int memory_info_dump () ;

__attribute__((used)) static int
ldumpinfo(lua_State *L) {
 memory_info_dump();

 return 0;
}
