
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {int size; } ;
typedef TYPE_1__ THLongStorage ;


 int THLongStorage_copy (TYPE_1__*,TYPE_1__*) ;
 int THLongStorage_free (TYPE_1__*) ;
 TYPE_1__* THLongStorage_newWithSize (int) ;
 int THLongStorage_set (TYPE_1__*,int,int ) ;
 int luaL_argerror (int *,int,char*) ;
 TYPE_1__* luaT_toudata (int *,int,char*) ;
 int lua_gettop (int *) ;
 int lua_isnumber (int *,int) ;
 int lua_tonumber (int *,int) ;

THLongStorage* torch_checklongargs(lua_State *L, int index)
{
  THLongStorage *storage;
  int i;
  int narg = lua_gettop(L)-index+1;

  if(narg == 1 && luaT_toudata(L, index, "torch.LongStorage"))
  {
    THLongStorage *storagesrc = luaT_toudata(L, index, "torch.LongStorage");
    storage = THLongStorage_newWithSize(storagesrc->size);
    THLongStorage_copy(storage, storagesrc);
  }
  else
  {
    storage = THLongStorage_newWithSize(narg);
    for(i = index; i < index+narg; i++)
    {
      if(!lua_isnumber(L, i))
      {
        THLongStorage_free(storage);
        luaL_argerror(L, i, "number expected");
      }
      THLongStorage_set(storage, i-index, lua_tonumber(L, i));
    }
  }
  return storage;
}
