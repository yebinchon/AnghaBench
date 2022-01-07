
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;


typedef scalar_t__ lua_Number ;
struct TYPE_24__ {scalar_t__ irt; } ;
struct TYPE_21__ {scalar_t__ nins; } ;
struct TYPE_22__ {TYPE_4__ guardemit; TYPE_1__ cur; int L; } ;
typedef TYPE_2__ jit_State ;
typedef scalar_t__ int32_t ;
struct TYPE_25__ {scalar_t__ asize; scalar_t__ hmask; int node; } ;
struct TYPE_23__ {int tab; scalar_t__ oldv; int keyv; int key; int tabv; } ;
struct TYPE_20__ {int val; } ;
typedef int TRef ;
typedef TYPE_3__ RecordIndex ;
typedef int Node ;
typedef scalar_t__ MSize ;
typedef TYPE_4__ IRType1 ;
typedef scalar_t__ IRRef ;
typedef TYPE_5__ GCtab ;


 int IRCONV_NUM_INT ;
 int IRFL_TAB_ARRAY ;
 int IRFL_TAB_ASIZE ;
 int IRFL_TAB_HMASK ;
 int IRFL_TAB_NODE ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRTGI (int ) ;
 int IRTI (int ) ;
 int IRTN (int ) ;
 int IRT_P32 ;
 int IR_AREF ;
 int IR_CONV ;
 int IR_EQ ;
 int IR_FLOAD ;
 int IR_HREF ;
 int IR_HREFK ;
 int IR_ULE ;
 int J2G (TYPE_2__*) ;
 scalar_t__ LJ_MAX_ASIZE ;
 int LJ_TRERR_NYITMIX ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (TYPE_2__*,scalar_t__) ;
 int lj_ir_kkptr (TYPE_2__*,int ) ;
 int lj_ir_knum_zero (TYPE_2__*) ;
 int lj_ir_kslot (TYPE_2__*,int ,scalar_t__) ;
 int lj_opt_narrow_index (TYPE_2__*,int ) ;
 scalar_t__ lj_tab_get (int ,TYPE_5__*,int *) ;
 int lj_trace_err (TYPE_2__*,int ) ;
 int niltvg (int ) ;
 TYPE_11__* noderef (int ) ;
 scalar_t__ numV (int *) ;
 scalar_t__ numberVint (int *) ;
 int rec_idx_abc (TYPE_2__*,int ,int ,scalar_t__) ;
 TYPE_5__* tabV (int *) ;
 scalar_t__ tref_isinteger (int ) ;
 scalar_t__ tref_isk (int ) ;
 scalar_t__ tref_isnumber (int ) ;
 int tvisint (int *) ;

__attribute__((used)) static TRef rec_idx_key(jit_State *J, RecordIndex *ix, IRRef *rbref,
   IRType1 *rbguard)
{
  TRef key;
  GCtab *t = tabV(&ix->tabv);
  ix->oldv = lj_tab_get(J->L, t, &ix->keyv);
  *rbref = 0;
  rbguard->irt = 0;


  key = ix->key;
  if (tref_isnumber(key)) {
    int32_t k = numberVint(&ix->keyv);
    if (!tvisint(&ix->keyv) && numV(&ix->keyv) != (lua_Number)k)
      k = LJ_MAX_ASIZE;
    if ((MSize)k < LJ_MAX_ASIZE) {
      TRef ikey = lj_opt_narrow_index(J, key);
      TRef asizeref = emitir(IRTI(IR_FLOAD), ix->tab, IRFL_TAB_ASIZE);
      if ((MSize)k < t->asize) {
 TRef arrayref;
 rec_idx_abc(J, asizeref, ikey, t->asize);
 arrayref = emitir(IRT(IR_FLOAD, IRT_P32), ix->tab, IRFL_TAB_ARRAY);
 return emitir(IRT(IR_AREF, IRT_P32), arrayref, ikey);
      } else {
 emitir(IRTGI(IR_ULE), asizeref, ikey);
 if (k == 0 && tref_isk(key))
   key = lj_ir_knum_zero(J);

      }
    } else if (!tref_isk(key)) {



      if (t->asize == 0) {

 TRef tmp = emitir(IRTI(IR_FLOAD), ix->tab, IRFL_TAB_ASIZE);
 emitir(IRTGI(IR_EQ), tmp, lj_ir_kint(J, 0));
      } else {
 lj_trace_err(J, LJ_TRERR_NYITMIX);
      }
    }
  }


  if (t->hmask == 0) {

    TRef tmp = emitir(IRTI(IR_FLOAD), ix->tab, IRFL_TAB_HMASK);
    emitir(IRTGI(IR_EQ), tmp, lj_ir_kint(J, 0));
    return lj_ir_kkptr(J, niltvg(J2G(J)));
  }
  if (tref_isinteger(key))
    key = emitir(IRTN(IR_CONV), key, IRCONV_NUM_INT);
  if (tref_isk(key)) {

    MSize hslot = (MSize)((char *)ix->oldv - (char *)&noderef(t->node)[0].val);
    if (t->hmask > 0 && hslot <= t->hmask*(MSize)sizeof(Node) &&
 hslot <= 65535*(MSize)sizeof(Node)) {
      TRef node, kslot, hm;
      *rbref = J->cur.nins;
      *rbguard = J->guardemit;
      hm = emitir(IRTI(IR_FLOAD), ix->tab, IRFL_TAB_HMASK);
      emitir(IRTGI(IR_EQ), hm, lj_ir_kint(J, (int32_t)t->hmask));
      node = emitir(IRT(IR_FLOAD, IRT_P32), ix->tab, IRFL_TAB_NODE);
      kslot = lj_ir_kslot(J, key, hslot / sizeof(Node));
      return emitir(IRTG(IR_HREFK, IRT_P32), node, kslot);
    }
  }

  return emitir(IRT(IR_HREF, IRT_P32), ix->tab, key);
}
