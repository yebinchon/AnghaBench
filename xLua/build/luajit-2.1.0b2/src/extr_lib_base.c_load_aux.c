
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ top; scalar_t__ base; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_8__ {int env; } ;
struct TYPE_10__ {TYPE_1__ c; } ;
typedef int GCtab ;
typedef TYPE_3__ GCfunc ;


 TYPE_3__* funcV (scalar_t__) ;
 int lj_gc_objbarrier (TYPE_2__*,TYPE_3__*,int *) ;
 int obj2gco (int *) ;
 int setgcref (int ,int ) ;
 int setnilV (scalar_t__) ;
 int * tabV (scalar_t__) ;
 scalar_t__ tvistab (scalar_t__) ;

__attribute__((used)) static int load_aux(lua_State *L, int status, int envarg)
{
  if (status == 0) {
    if (tvistab(L->base+envarg-1)) {
      GCfunc *fn = funcV(L->top-1);
      GCtab *t = tabV(L->base+envarg-1);
      setgcref(fn->c.env, obj2gco(t));
      lj_gc_objbarrier(L, fn, t);
    }
    return 1;
  } else {
    setnilV(L->top-2);
    return 2;
  }
}
