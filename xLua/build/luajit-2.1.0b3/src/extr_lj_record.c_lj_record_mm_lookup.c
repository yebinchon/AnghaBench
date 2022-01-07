
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;


struct TYPE_21__ {int L; } ;
typedef TYPE_1__ jit_State ;
typedef int cTValue ;
struct TYPE_24__ {int metatable; } ;
struct TYPE_23__ {int udtype; int metatable; } ;
struct TYPE_22__ {void* tab; void* mt; int mobj; scalar_t__ idxchain; scalar_t__ val; int key; int keyv; int tabv; int * mtv; int mobjv; } ;
struct TYPE_20__ {int * gcroot; } ;
typedef void* TRef ;
typedef TYPE_2__ RecordIndex ;
typedef int MMS ;
typedef int GCtab ;
typedef int GCstr ;


 size_t GCROOT_BASEMT ;
 int GG_OFS (int ) ;
 int IRFL_TAB_META ;
 int IRFL_UDATA_META ;
 int IRFL_UDATA_UDTYPE ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRTGI (int ) ;
 int IRT_FUNC ;
 int IRT_PGC ;
 int IRT_TAB ;
 int IRT_U8 ;
 int IR_EQ ;
 int IR_FLOAD ;
 int IR_NE ;
 int J2G (TYPE_1__*) ;
 scalar_t__ LJ_HASFFI ;
 int LJ_TRERR_BADTYPE ;
 void* TREF_NIL ;
 int UDTYPE_FFI_CLIB ;
 int UDTYPE_USERDATA ;
 int basemt_obj (int ,int *) ;
 int copyTV (int ,int *,int *) ;
 void* emitir (int ,void*,int ) ;
 TYPE_18__ g ;
 int gcV (int *) ;
 size_t itypemap (int *) ;
 void* lj_ir_ggfload (TYPE_1__*,int ,int ) ;
 int lj_ir_kgc (TYPE_1__*,int ,int ) ;
 int lj_ir_kint (TYPE_1__*,int) ;
 int lj_ir_knull (TYPE_1__*,int ) ;
 int lj_ir_kptr (TYPE_1__*,TYPE_3__*) ;
 int lj_ir_kstr (TYPE_1__*,int *) ;
 void* lj_ir_ktab (TYPE_1__*,int *) ;
 int lj_record_idx (TYPE_1__*,TYPE_2__*) ;
 int * lj_tab_getstr (int *,int *) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int * mmname_str (int ,int ) ;
 int setstrV (int ,int *,int *) ;
 int settabV (int ,int *,int *) ;
 TYPE_4__* tabV (int *) ;
 int * tabref (int ) ;
 scalar_t__ tref_iscdata (void*) ;
 int tref_isnil (int ) ;
 scalar_t__ tref_istab (void*) ;
 scalar_t__ tref_isudata (void*) ;
 scalar_t__ tvisfunc (int *) ;
 scalar_t__ tvisnil (int *) ;
 scalar_t__ tvistab (int *) ;
 TYPE_3__* udataV (int *) ;

int lj_record_mm_lookup(jit_State *J, RecordIndex *ix, MMS mm)
{
  RecordIndex mix;
  GCtab *mt;
  if (tref_istab(ix->tab)) {
    mt = tabref(tabV(&ix->tabv)->metatable);
    mix.tab = emitir(IRT(IR_FLOAD, IRT_TAB), ix->tab, IRFL_TAB_META);
  } else if (tref_isudata(ix->tab)) {
    int udtype = udataV(&ix->tabv)->udtype;
    mt = tabref(udataV(&ix->tabv)->metatable);

    if (udtype != UDTYPE_USERDATA) {
      cTValue *mo;
      if (LJ_HASFFI && udtype == UDTYPE_FFI_CLIB) {

 emitir(IRTG(IR_EQ, IRT_PGC), ix->tab, lj_ir_kptr(J, udataV(&ix->tabv)));
      } else {

 TRef tr = emitir(IRT(IR_FLOAD, IRT_U8), ix->tab, IRFL_UDATA_UDTYPE);
 emitir(IRTGI(IR_EQ), tr, lj_ir_kint(J, udtype));
      }
  immutable_mt:
      mo = lj_tab_getstr(mt, mmname_str(J2G(J), mm));
      if (!mo || tvisnil(mo))
 return 0;

      if (!(tvisfunc(mo) || tvistab(mo)))
 lj_trace_err(J, LJ_TRERR_BADTYPE);
      copyTV(J->L, &ix->mobjv, mo);
      ix->mobj = lj_ir_kgc(J, gcV(mo), tvisfunc(mo) ? IRT_FUNC : IRT_TAB);
      ix->mtv = mt;
      ix->mt = TREF_NIL;
      return 1;
    }
    mix.tab = emitir(IRT(IR_FLOAD, IRT_TAB), ix->tab, IRFL_UDATA_META);
  } else {

    mt = tabref(basemt_obj(J2G(J), &ix->tabv));
    if (mt == ((void*)0)) {
      ix->mt = TREF_NIL;
      return 0;
    }

    if (LJ_HASFFI && tref_iscdata(ix->tab)) goto immutable_mt;





    ix->mt = mix.tab = lj_ir_ktab(J, mt);

    goto nocheck;
  }
  ix->mt = mt ? mix.tab : TREF_NIL;
  emitir(IRTG(mt ? IR_NE : IR_EQ, IRT_TAB), mix.tab, lj_ir_knull(J, IRT_TAB));
nocheck:
  if (mt) {
    GCstr *mmstr = mmname_str(J2G(J), mm);
    cTValue *mo = lj_tab_getstr(mt, mmstr);
    if (mo && !tvisnil(mo))
      copyTV(J->L, &ix->mobjv, mo);
    ix->mtv = mt;
    settabV(J->L, &mix.tabv, mt);
    setstrV(J->L, &mix.keyv, mmstr);
    mix.key = lj_ir_kstr(J, mmstr);
    mix.val = 0;
    mix.idxchain = 0;
    ix->mobj = lj_record_idx(J, &mix);
    return !tref_isnil(ix->mobj);
  }
  return 0;
}
