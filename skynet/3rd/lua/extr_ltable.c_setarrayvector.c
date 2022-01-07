
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {unsigned int sizearray; int * array; } ;
typedef TYPE_1__ Table ;


 int TValue ;
 int luaM_reallocvector (int *,int *,unsigned int,unsigned int,int ) ;
 int setnilvalue (int *) ;

__attribute__((used)) static void setarrayvector (lua_State *L, Table *t, unsigned int size) {
  unsigned int i;
  luaM_reallocvector(L, t->array, t->sizearray, size, TValue);
  for (i=t->sizearray; i<size; i++)
     setnilvalue(&t->array[i]);
  t->sizearray = size;
}
