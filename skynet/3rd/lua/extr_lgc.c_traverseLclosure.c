
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lu_mem ;
struct TYPE_13__ {scalar_t__ gcstate; } ;
typedef TYPE_3__ global_State ;
struct TYPE_11__ {int touched; } ;
struct TYPE_12__ {TYPE_1__ open; } ;
struct TYPE_14__ {int v; TYPE_2__ u; } ;
typedef TYPE_4__ UpVal ;
struct TYPE_15__ {int nupvalues; TYPE_4__** upvals; int p; } ;
typedef TYPE_5__ LClosure ;


 scalar_t__ GCSinsideatomic ;
 int markobjectN (TYPE_3__*,int ) ;
 int markvalue (TYPE_3__*,int ) ;
 int sizeLclosure (int) ;
 scalar_t__ upisopen (TYPE_4__*) ;

__attribute__((used)) static lu_mem traverseLclosure (global_State *g, LClosure *cl) {
  int i;
  markobjectN(g, cl->p);
  for (i = 0; i < cl->nupvalues; i++) {
    UpVal *uv = cl->upvals[i];
    if (uv != ((void*)0)) {
      if (upisopen(uv) && g->gcstate != GCSinsideatomic)
        uv->u.open.touched = 1;
      else
        markvalue(g, uv->v);
    }
  }
  return sizeLclosure(cl->nupvalues);
}
