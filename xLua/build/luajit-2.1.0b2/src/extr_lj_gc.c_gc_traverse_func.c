
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int global_State ;
struct TYPE_14__ {scalar_t__ sizeuv; } ;
struct TYPE_15__ {TYPE_4__ uv; } ;
struct TYPE_12__ {size_t nupvalues; int * upvalue; int env; } ;
struct TYPE_11__ {scalar_t__ nupvalues; int * uvptr; } ;
struct TYPE_13__ {TYPE_2__ c; TYPE_1__ l; } ;
typedef TYPE_3__ GCfunc ;


 TYPE_4__* funcproto (TYPE_3__*) ;
 int gc_markobj (int *,TYPE_4__*) ;
 int gc_marktv (int *,int *) ;
 TYPE_6__* gcref (int ) ;
 scalar_t__ isluafunc (TYPE_3__*) ;
 int lua_assert (int) ;
 TYPE_4__* tabref (int ) ;

__attribute__((used)) static void gc_traverse_func(global_State *g, GCfunc *fn)
{
  gc_markobj(g, tabref(fn->c.env));
  if (isluafunc(fn)) {
    uint32_t i;
    lua_assert(fn->l.nupvalues <= funcproto(fn)->sizeuv);
    gc_markobj(g, funcproto(fn));
    for (i = 0; i < fn->l.nupvalues; i++)
      gc_markobj(g, &gcref(fn->l.uvptr[i])->uv);
  } else {
    uint32_t i;
    for (i = 0; i < fn->c.nupvalues; i++)
      gc_marktv(g, &fn->c.upvalue[i]);
  }
}
