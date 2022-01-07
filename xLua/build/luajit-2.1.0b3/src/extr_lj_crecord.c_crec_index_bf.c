
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int needsnap; int * base; int postproc; } ;
typedef TYPE_1__ jit_State ;
typedef int int32_t ;
struct TYPE_10__ {scalar_t__ data; scalar_t__ nres; int * argv; } ;
typedef int TRef ;
typedef TYPE_2__ RecordFFData ;
typedef scalar_t__ IRType ;
typedef int CType ;
typedef int CTState ;
typedef int CTSize ;
typedef int CTInfo ;


 int CTF_BOOL ;
 int CTF_UNSIGNED ;
 int CTID_BOOL ;
 int CTID_INT32 ;
 int CTID_UINT32 ;
 int IRT (int ,scalar_t__) ;
 int IRTGI (int ) ;
 int IRTI (int ) ;
 scalar_t__ IRT_I8 ;
 scalar_t__ IRT_U32 ;
 int IR_BAND ;
 int IR_BOR ;
 int IR_BSAR ;
 int IR_BSHL ;
 int IR_BSHR ;
 int IR_NE ;
 int IR_XLOAD ;
 int IR_XSTORE ;
 int J2G (TYPE_1__*) ;
 int LJ_POST_FIXGUARD ;
 int TREF_TRUE ;
 int crec_ct_tv (TYPE_1__*,int *,int ,int ,int *) ;
 int ctype_bitbsz (int) ;
 int ctype_bitcsz (int) ;
 int ctype_bitpos (int) ;
 int * ctype_ctsG (int ) ;
 int * ctype_get (int *,int ) ;
 int emitir (int ,int ,int ) ;
 int lj_fls (int ) ;
 int lj_ir_kint (TYPE_1__*,int) ;
 int lj_ir_set (TYPE_1__*,int ,int ,int ) ;
 int lua_assert (int) ;

__attribute__((used)) static void crec_index_bf(jit_State *J, RecordFFData *rd, TRef ptr, CTInfo info)
{
  IRType t = IRT_I8 + 2*lj_fls(ctype_bitcsz(info)) + ((info&CTF_UNSIGNED)?1:0);
  TRef tr = emitir(IRT(IR_XLOAD, t), ptr, 0);
  CTSize pos = ctype_bitpos(info), bsz = ctype_bitbsz(info), shift = 32 - bsz;
  lua_assert(t <= IRT_U32);
  if (rd->data == 0) {
    if ((info & CTF_BOOL)) {
      tr = emitir(IRTI(IR_BAND), tr, lj_ir_kint(J, (int32_t)((1u << pos))));

      lj_ir_set(J, IRTGI(IR_NE), tr, lj_ir_kint(J, 0));
      J->postproc = LJ_POST_FIXGUARD;
      tr = TREF_TRUE;
    } else if (!(info & CTF_UNSIGNED)) {
      tr = emitir(IRTI(IR_BSHL), tr, lj_ir_kint(J, shift - pos));
      tr = emitir(IRTI(IR_BSAR), tr, lj_ir_kint(J, shift));
    } else {
      lua_assert(bsz < 32);
      tr = emitir(IRTI(IR_BSHR), tr, lj_ir_kint(J, pos));
      tr = emitir(IRTI(IR_BAND), tr, lj_ir_kint(J, (int32_t)((1u << bsz)-1)));

    }
    J->base[0] = tr;
  } else {
    CTState *cts = ctype_ctsG(J2G(J));
    CType *ct = ctype_get(cts,
     (info & CTF_BOOL) ? CTID_BOOL :
     (info & CTF_UNSIGNED) ? CTID_UINT32 : CTID_INT32);
    int32_t mask = (int32_t)(((1u << bsz)-1) << pos);
    TRef sp = crec_ct_tv(J, ct, 0, J->base[2], &rd->argv[2]);
    sp = emitir(IRTI(IR_BSHL), sp, lj_ir_kint(J, pos));

    sp = emitir(IRT(IR_BAND, t), sp, lj_ir_kint(J, mask));
    tr = emitir(IRT(IR_BAND, t), tr, lj_ir_kint(J, (int32_t)~mask));
    tr = emitir(IRT(IR_BOR, t), tr, sp);
    emitir(IRT(IR_XSTORE, t), ptr, tr);
    rd->nres = 0;
    J->needsnap = 1;
  }
}
