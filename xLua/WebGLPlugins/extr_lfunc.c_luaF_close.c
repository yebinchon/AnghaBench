
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__* openupval; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_12__ {TYPE_4__* next; } ;
struct TYPE_13__ {int value; TYPE_1__ open; } ;
struct TYPE_15__ {scalar_t__ v; scalar_t__ refcount; TYPE_2__ u; } ;
typedef TYPE_4__ UpVal ;
typedef scalar_t__ StkId ;


 int luaC_upvalbarrier (TYPE_3__*,TYPE_4__*) ;
 int luaM_free (TYPE_3__*,TYPE_4__*) ;
 int lua_assert (int ) ;
 int setobj (TYPE_3__*,int *,scalar_t__) ;
 int upisopen (TYPE_4__*) ;

void luaF_close (lua_State *L, StkId level) {
  UpVal *uv;
  while (L->openupval != ((void*)0) && (uv = L->openupval)->v >= level) {
    lua_assert(upisopen(uv));
    L->openupval = uv->u.open.next;
    if (uv->refcount == 0)
      luaM_free(L, uv);
    else {
      setobj(L, &uv->u.value, uv->v);
      uv->v = &uv->u.value;
      luaC_upvalbarrier(L, uv);
    }
  }
}
