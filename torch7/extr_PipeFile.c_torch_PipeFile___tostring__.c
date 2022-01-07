
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THFile ;


 int THDiskFile_name (int *) ;
 scalar_t__ THFile_isOpened (int *) ;
 scalar_t__ THFile_isReadable (int *) ;
 scalar_t__ THFile_isWritable (int *) ;
 int * luaT_checkudata (int *,int,char*) ;
 int lua_pushfstring (int *,char*,int ,char*,char,char) ;

__attribute__((used)) static int torch_PipeFile___tostring__(lua_State *L)
{
  THFile *self = luaT_checkudata(L, 1, "torch.PipeFile");
  lua_pushfstring(L, "torch.PipeFile on <%s> [status: %s -- mode: %c%c]",
                  THDiskFile_name(self),
                  (THFile_isOpened(self) ? "open" : "closed"),
                  (THFile_isReadable(self) ? 'r' : ' '),
                  (THFile_isWritable(self) ? 'w' : ' '));
  return 1;
}
