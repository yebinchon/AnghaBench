
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int jit_State ;
typedef int cTValue ;
struct TYPE_11__ {int size; int info; } ;
struct TYPE_10__ {int marked; int ctypeid; } ;
struct TYPE_9__ {scalar_t__ immutable; } ;
typedef TYPE_1__ GCupval ;
typedef TYPE_2__ GCcdata ;
typedef TYPE_3__ CType ;


 int J2G (int *) ;
 int LJ_GC_CDATA_FIN ;
 int UNUSED (int *) ;
 TYPE_2__* cdataV (int *) ;
 int cdataisv (TYPE_2__*) ;
 int ctype_ctsG (int ) ;
 int ctype_hassize (int ) ;
 TYPE_3__* ctype_raw (int ,int ) ;
 scalar_t__ tviscdata (int *) ;
 scalar_t__ tvistab (int *) ;
 scalar_t__ tvisthread (int *) ;
 scalar_t__ tvisudata (int *) ;
 int * uvval (TYPE_1__*) ;

__attribute__((used)) static int rec_upvalue_constify(jit_State *J, GCupval *uvp)
{
  if (uvp->immutable) {
    cTValue *o = uvval(uvp);
    UNUSED(J);

    if (!(tvistab(o) || tvisudata(o) || tvisthread(o)))
      return 1;
  }
  return 0;
}
