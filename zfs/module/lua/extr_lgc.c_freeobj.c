
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int nuse; } ;
struct TYPE_10__ {TYPE_1__ strt; } ;
struct TYPE_9__ {int tt; } ;
struct TYPE_8__ {int nupvalues; } ;
struct TYPE_7__ {int nupvalues; } ;
typedef int GCObject ;


 TYPE_5__* G (int *) ;
 TYPE_4__* gch (int *) ;
 TYPE_3__* gco2ccl (int *) ;
 TYPE_2__* gco2lcl (int *) ;
 int gco2p (int *) ;
 int gco2t (int *) ;
 int gco2th (int *) ;
 int gco2ts (int *) ;
 int gco2u (int *) ;
 int gco2uv (int *) ;
 int luaE_freethread (int *,int ) ;
 int luaF_freeproto (int *,int ) ;
 int luaF_freeupval (int *,int ) ;
 int luaH_free (int *,int ) ;
 int luaM_freemem (int *,int *,int ) ;
 int lua_assert (int ) ;
 int sizeCclosure (int ) ;
 int sizeLclosure (int ) ;
 int sizestring (int ) ;
 int sizeudata (int ) ;

__attribute__((used)) static void freeobj (lua_State *L, GCObject *o) {
  switch (gch(o)->tt) {
    case 133: luaF_freeproto(L, gco2p(o)); break;
    case 135: {
      luaM_freemem(L, o, sizeLclosure(gco2lcl(o)->nupvalues));
      break;
    }
    case 136: {
      luaM_freemem(L, o, sizeCclosure(gco2ccl(o)->nupvalues));
      break;
    }
    case 129: luaF_freeupval(L, gco2uv(o)); break;
    case 131: luaH_free(L, gco2t(o)); break;
    case 130: luaE_freethread(L, gco2th(o)); break;
    case 128: luaM_freemem(L, o, sizeudata(gco2u(o))); break;
    case 132:
      G(L)->strt.nuse--;

    case 134: {
      luaM_freemem(L, o, sizestring(gco2ts(o)));
      break;
    }
    default: lua_assert(0);
  }
}
