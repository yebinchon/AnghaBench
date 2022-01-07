
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MINSIZEARRAY ;
 int luaG_runerror (int *,char*,char const*,int) ;
 void* luaM_reallocv (int *,void*,int,int,size_t) ;

void *luaM_growaux_ (lua_State *L, void *block, int *size, size_t size_elems,
                     int limit, const char *what) {
  void *newblock;
  int newsize;
  if (*size >= limit/2) {
    if (*size >= limit)
      luaG_runerror(L, "too many %s (limit is %d)", what, limit);
    newsize = limit;
  }
  else {
    newsize = (*size)*2;
    if (newsize < MINSIZEARRAY)
      newsize = MINSIZEARRAY;
  }
  newblock = luaM_reallocv(L, block, *size, newsize, size_elems);
  *size = newsize;
  return newblock;
}
