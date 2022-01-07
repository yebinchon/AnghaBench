
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef int lua_Number ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_34__ {scalar_t__ info; } ;
struct TYPE_35__ {TYPE_1__ s; int nval; } ;
struct TYPE_39__ {scalar_t__ k; TYPE_2__ u; int t; int f; } ;
struct TYPE_38__ {scalar_t__ freereg; } ;
struct TYPE_37__ {scalar_t__ ctypeid; } ;
struct TYPE_36__ {scalar_t__ u64; } ;
typedef TYPE_3__ TValue ;
typedef TYPE_4__ GCcdata ;
typedef TYPE_5__ FuncState ;
typedef TYPE_6__ ExpDesc ;
typedef int BCPos ;
typedef scalar_t__ BCOp ;


 scalar_t__ BC_LEN ;
 scalar_t__ BC_NOT ;
 scalar_t__ BC_UNM ;
 scalar_t__ CTID_COMPLEX_DOUBLE ;
 scalar_t__ LJ_HASFFI ;
 scalar_t__ U64x (int,int) ;
 scalar_t__ VJMP ;
 scalar_t__ VKCDATA ;
 scalar_t__ VKFALSE ;
 scalar_t__ VKNIL ;
 scalar_t__ VKTRUE ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VRELOCABLE ;
 scalar_t__ bcemit_AD (TYPE_5__*,scalar_t__,int ,scalar_t__) ;
 int bcptr (TYPE_5__*,TYPE_6__*) ;
 int bcreg_reserve (TYPE_5__*,int) ;
 TYPE_4__* cdataV (int *) ;
 scalar_t__ cdataptr (TYPE_4__*) ;
 int expr_discharge (TYPE_5__*,TYPE_6__*) ;
 int expr_free (TYPE_5__*,TYPE_6__*) ;
 int expr_hasjump (TYPE_6__*) ;
 scalar_t__ expr_isk (TYPE_6__*) ;
 scalar_t__ expr_isnumk (TYPE_6__*) ;
 int expr_numiszero (TYPE_6__*) ;
 TYPE_3__* expr_numtv (TYPE_6__*) ;
 int expr_toanyreg (TYPE_5__*,TYPE_6__*) ;
 scalar_t__ intV (TYPE_3__*) ;
 int invertcond (TYPE_5__*,TYPE_6__*) ;
 int jmp_dropval (TYPE_5__*,int ) ;
 int lua_assert (int) ;
 int setbc_a (int ,scalar_t__) ;
 int setintV (TYPE_3__*,scalar_t__) ;
 int setnumV (TYPE_3__*,int ) ;
 scalar_t__ tvisint (TYPE_3__*) ;

__attribute__((used)) static void bcemit_unop(FuncState *fs, BCOp op, ExpDesc *e)
{
  if (op == BC_NOT) {

    { BCPos temp = e->f; e->f = e->t; e->t = temp; }
    jmp_dropval(fs, e->f);
    jmp_dropval(fs, e->t);
    expr_discharge(fs, e);
    if (e->k == VKNIL || e->k == VKFALSE) {
      e->k = VKTRUE;
      return;
    } else if (expr_isk(e) || (LJ_HASFFI && e->k == VKCDATA)) {
      e->k = VKFALSE;
      return;
    } else if (e->k == VJMP) {
      invertcond(fs, e);
      return;
    } else if (e->k == VRELOCABLE) {
      bcreg_reserve(fs, 1);
      setbc_a(bcptr(fs, e), fs->freereg-1);
      e->u.s.info = fs->freereg-1;
      e->k = VNONRELOC;
    } else {
      lua_assert(e->k == VNONRELOC);
    }
  } else {
    lua_assert(op == BC_UNM || op == BC_LEN);
    if (op == BC_UNM && !expr_hasjump(e)) {
      if (expr_isnumk(e) && !expr_numiszero(e)) {
 TValue *o = expr_numtv(e);
 if (tvisint(o)) {
   int32_t k = intV(o);
   if (k == -k)
     setnumV(o, -(lua_Number)k);
   else
     setintV(o, -k);
   return;
 } else {
   o->u64 ^= U64x(80000000,00000000);
   return;
 }
      }
    }
    expr_toanyreg(fs, e);
  }
  expr_free(fs, e);
  e->u.s.info = bcemit_AD(fs, op, 0, e->u.s.info);
  e->k = VRELOCABLE;
}
