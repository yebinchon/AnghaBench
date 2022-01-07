
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int cTValue ;
struct TYPE_15__ {int uv; } ;
struct TYPE_12__ {scalar_t__ nupvalues; int * upvalue; } ;
struct TYPE_11__ {int * uvptr; } ;
struct TYPE_14__ {TYPE_2__ c; TYPE_1__ l; } ;
struct TYPE_13__ {scalar_t__ sizeuv; } ;
typedef int TValue ;
typedef TYPE_3__ GCproto ;
typedef TYPE_4__ GCfunc ;


 TYPE_4__* funcV (int *) ;
 TYPE_3__* funcproto (TYPE_4__*) ;
 TYPE_7__* gcref (int ) ;
 scalar_t__ isluafunc (TYPE_4__*) ;
 char const* lj_debug_uvname (TYPE_3__*,scalar_t__) ;
 scalar_t__ tvisfunc (int *) ;
 int * uvval (int *) ;

const char *lj_debug_uvnamev(cTValue *o, uint32_t idx, TValue **tvp)
{
  if (tvisfunc(o)) {
    GCfunc *fn = funcV(o);
    if (isluafunc(fn)) {
      GCproto *pt = funcproto(fn);
      if (idx < pt->sizeuv) {
 *tvp = uvval(&gcref(fn->l.uvptr[idx])->uv);
 return lj_debug_uvname(pt, idx);
      }
    } else {
      if (idx < fn->c.nupvalues) {
 *tvp = &fn->c.upvalue[idx];
 return "";
      }
    }
  }
  return ((void*)0);
}
