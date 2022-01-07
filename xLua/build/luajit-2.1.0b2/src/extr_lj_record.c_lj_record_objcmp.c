
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jit_State ;
typedef int cTValue ;
typedef int TRef ;
typedef scalar_t__ IRType ;


 int IRCONV_NUM_INT ;
 int IRTG (int ,scalar_t__) ;
 int IRTN (int ) ;
 scalar_t__ IRT_INT ;
 scalar_t__ IRT_NUM ;
 int IR_CONV ;
 int IR_EQ ;
 int IR_NE ;
 int emitir (int ,int ,int ) ;
 int lj_obj_equal (int *,int *) ;
 scalar_t__ tref_isinteger (int ) ;
 int tref_isk2 (int ,int ) ;
 scalar_t__ tref_type (int ) ;

int lj_record_objcmp(jit_State *J, TRef a, TRef b, cTValue *av, cTValue *bv)
{
  int diff = !lj_obj_equal(av, bv);
  if (!tref_isk2(a, b)) {
    IRType ta = tref_isinteger(a) ? IRT_INT : tref_type(a);
    IRType tb = tref_isinteger(b) ? IRT_INT : tref_type(b);
    if (ta != tb) {

      if (ta == IRT_INT && tb == IRT_NUM) {
 a = emitir(IRTN(IR_CONV), a, IRCONV_NUM_INT);
 ta = IRT_NUM;
      } else if (ta == IRT_NUM && tb == IRT_INT) {
 b = emitir(IRTN(IR_CONV), b, IRCONV_NUM_INT);
      } else {
 return 2;
      }
    }
    emitir(IRTG(diff ? IR_NE : IR_EQ, ta), a, b);
  }
  return diff;
}
