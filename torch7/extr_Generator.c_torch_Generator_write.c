
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THGenerator ;
typedef int THFile ;


 int THFile_writeByteRaw (int *,unsigned char*,int) ;
 void* luaT_checkudata (int *,int,char*) ;
 char* torch_Generator ;

__attribute__((used)) static int torch_Generator_write(lua_State *L)
{
  THGenerator *gen = luaT_checkudata(L, 1, torch_Generator);
  THFile *file = luaT_checkudata(L, 2, "torch.File");

  THFile_writeByteRaw(file, (unsigned char *)gen, sizeof(THGenerator));
  return 0;
}
