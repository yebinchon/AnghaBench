
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Reader ;
typedef int ZIO ;


 int luaD_protectedparser (int *,int *,char const*) ;
 int luaZ_init (int *,int *,int ,void*) ;

__attribute__((used)) static int lua_load(lua_State*L,lua_Reader reader,void*data,
const char*chunkname){
ZIO z;
int status;
if(!chunkname)chunkname="?";
luaZ_init(L,&z,reader,data);
status=luaD_protectedparser(L,&z,chunkname);
return status;
}
