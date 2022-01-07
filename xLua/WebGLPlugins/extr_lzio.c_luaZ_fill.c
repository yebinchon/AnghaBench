
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {char* (* reader ) (int *,int ,size_t*) ;size_t n; char const* p; int data; int * L; } ;
typedef TYPE_1__ ZIO ;


 int EOZ ;
 int cast_uchar (int ) ;
 int lua_lock (int *) ;
 int lua_unlock (int *) ;
 char* stub1 (int *,int ,size_t*) ;

int luaZ_fill (ZIO *z) {
  size_t size;
  lua_State *L = z->L;
  const char *buff;
  lua_unlock(L);
  buff = z->reader(L, z->data, &size);
  lua_lock(L);
  if (buff == ((void*)0) || size == 0)
    return EOZ;
  z->n = size - 1;
  z->p = buff;
  return cast_uchar(*(z->p++));
}
