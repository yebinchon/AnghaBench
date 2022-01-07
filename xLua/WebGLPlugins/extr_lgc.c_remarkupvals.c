
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* openupval; struct TYPE_12__* twups; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_13__ {TYPE_3__* twups; } ;
typedef TYPE_4__ global_State ;
struct TYPE_10__ {scalar_t__ touched; TYPE_5__* next; } ;
struct TYPE_11__ {TYPE_1__ open; } ;
struct TYPE_14__ {TYPE_2__ u; int v; } ;
typedef TYPE_5__ UpVal ;


 int isblack (TYPE_3__*) ;
 scalar_t__ isgray (TYPE_3__*) ;
 int lua_assert (int) ;
 int markvalue (TYPE_4__*,int ) ;

__attribute__((used)) static void remarkupvals (global_State *g) {
  lua_State *thread;
  lua_State **p = &g->twups;
  while ((thread = *p) != ((void*)0)) {
    lua_assert(!isblack(thread));
    if (isgray(thread) && thread->openupval != ((void*)0))
      p = &thread->twups;
    else {
      UpVal *uv;
      *p = thread->twups;
      thread->twups = thread;
      for (uv = thread->openupval; uv != ((void*)0); uv = uv->u.open.next) {
        if (uv->u.open.touched) {
          markvalue(g, uv->v);
          uv->u.open.touched = 0;
        }
      }
    }
  }
}
