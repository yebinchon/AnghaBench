
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int mmudata; } ;
struct TYPE_4__ {TYPE_1__ gc; } ;


 TYPE_2__* G (int *) ;
 int gc_finalize (int *) ;
 int * gcref (int ) ;

void lj_gc_finalize_udata(lua_State *L)
{
  while (gcref(G(L)->gc.mmudata) != ((void*)0))
    gc_finalize(L);
}
