
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int lua_State ;
struct TYPE_10__ {TYPE_1__* finalizer; } ;
struct TYPE_9__ {int marked; } ;
struct TYPE_8__ {int metatable; } ;
typedef int TValue ;
typedef TYPE_1__ GCtab ;
typedef int GCobj ;
typedef TYPE_2__ GCcdata ;


 int G (int *) ;
 int LJ_GC_CDATA_FIN ;
 int LJ_TNIL ;
 TYPE_7__* ctype_ctsG (int ) ;
 scalar_t__ gcref (int ) ;
 int lj_gc_anybarriert (int *,TYPE_1__*) ;
 int * lj_tab_set (int *,TYPE_1__*,int *) ;
 int setcdataV (int *,int *,TYPE_2__*) ;
 int setgcV (int *,int *,int *,int ) ;
 int setnilV (int *) ;

void lj_cdata_setfin(lua_State *L, GCcdata *cd, GCobj *obj, uint32_t it)
{
  GCtab *t = ctype_ctsG(G(L))->finalizer;
  if (gcref(t->metatable)) {

    TValue *tv, tmp;
    setcdataV(L, &tmp, cd);
    lj_gc_anybarriert(L, t);
    tv = lj_tab_set(L, t, &tmp);
    if (it == LJ_TNIL) {
      setnilV(tv);
      cd->marked &= ~LJ_GC_CDATA_FIN;
    } else {
      setgcV(L, tv, obj, it);
      cd->marked |= LJ_GC_CDATA_FIN;
    }
  }
}
