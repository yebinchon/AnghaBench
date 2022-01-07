
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int savetv ;
struct TYPE_13__ {void** base; size_t maxslot; TYPE_3__* L; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_15__ {int * base; } ;
struct TYPE_14__ {void* key; void* tab; int tabv; int keyv; } ;
struct TYPE_12__ {int strempty; int tmpbuf; } ;
typedef int TValue ;
typedef void* TRef ;
typedef TYPE_2__ RecordIndex ;
typedef size_t BCReg ;


 void* IRBUFHDR_RESET ;
 int IRT (int ,int ) ;
 void* IRTOSTR_INT ;
 void* IRTOSTR_NUM ;
 int IRT_PGC ;
 int IRT_STR ;
 int IR_BUFHDR ;
 int IR_BUFPUT ;
 int IR_BUFSTR ;
 int IR_TOSTR ;
 TYPE_10__* J2G (TYPE_1__*) ;
 int MM_concat ;
 int copyTV (TYPE_3__*,int *,int *) ;
 void* emitir (int ,void*,void*) ;
 int getslot (TYPE_1__*,size_t) ;
 void* lj_ir_kptr (TYPE_1__*,int *) ;
 int lua_assert (int) ;
 int memcpy (int *,int *,int) ;
 int rec_mm_arith (TYPE_1__*,TYPE_2__*,int ) ;
 int setstrV (TYPE_3__*,int *,int *) ;
 scalar_t__ tref_isnum (void*) ;
 scalar_t__ tref_isnumber (void*) ;
 scalar_t__ tref_isnumber_str (void*) ;
 int tref_isstr (void*) ;

__attribute__((used)) static TRef rec_cat(jit_State *J, BCReg baseslot, BCReg topslot)
{
  TRef *top = &J->base[topslot];
  TValue savetv[5];
  BCReg s;
  RecordIndex ix;
  lua_assert(baseslot < topslot);
  for (s = baseslot; s <= topslot; s++)
    (void)getslot(J, s);
  if (tref_isnumber_str(top[0]) && tref_isnumber_str(top[-1])) {
    TRef tr, hdr, *trp, *xbase, *base = &J->base[baseslot];

    for (trp = top; trp >= base; trp--) {
      if (tref_isnumber(*trp))
 *trp = emitir(IRT(IR_TOSTR, IRT_STR), *trp,
        tref_isnum(*trp) ? IRTOSTR_NUM : IRTOSTR_INT);
      else if (!tref_isstr(*trp))
 break;
    }
    xbase = ++trp;
    tr = hdr = emitir(IRT(IR_BUFHDR, IRT_PGC),
        lj_ir_kptr(J, &J2G(J)->tmpbuf), IRBUFHDR_RESET);
    do {
      tr = emitir(IRT(IR_BUFPUT, IRT_PGC), tr, *trp++);
    } while (trp <= top);
    tr = emitir(IRT(IR_BUFSTR, IRT_STR), tr, hdr);
    J->maxslot = (BCReg)(xbase - J->base);
    if (xbase == base) return tr;

    topslot = J->maxslot--;
    *xbase = tr;
    top = xbase;
    setstrV(J->L, &ix.keyv, &J2G(J)->strempty);
  } else {
    J->maxslot = topslot-1;
    copyTV(J->L, &ix.keyv, &J->L->base[topslot]);
  }
  copyTV(J->L, &ix.tabv, &J->L->base[topslot-1]);
  ix.tab = top[-1];
  ix.key = top[0];
  memcpy(savetv, &J->L->base[topslot-1], sizeof(savetv));
  rec_mm_arith(J, &ix, MM_concat);
  memcpy(&J->L->base[topslot-1], savetv, sizeof(savetv));
  return 0;
}
