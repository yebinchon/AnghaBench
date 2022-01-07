
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int lua_State ;


 int luaL_error (int *,char*,...) ;
 void* luaT_alloc (int *,int) ;
 int luaT_free (int *,void*) ;
 void* realloc (void*,int) ;

void* luaT_realloc(lua_State *L, void *ptr, ptrdiff_t size)
{
  if(!ptr)
    return(luaT_alloc(L, size));

  if(size == 0)
  {
    luaT_free(L, ptr);
    return ((void*)0);
  }

  if(size < 0)
    luaL_error(L, "$ Torch: invalid memory size -- maybe an overflow?");

  ptr = realloc(ptr, size);
  if(!ptr)
    luaL_error(L, "$ Torch: not enough memory: you tried to reallocate %dGB. Buy new RAM!", size/1073741824);
  return ptr;
}
