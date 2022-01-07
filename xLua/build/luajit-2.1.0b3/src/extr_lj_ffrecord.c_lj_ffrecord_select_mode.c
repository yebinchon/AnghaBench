
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jit_State ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {int len; } ;
typedef int TValue ;
typedef int TRef ;


 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRT_INT ;
 int IRT_PGC ;
 int IRT_STR ;
 int IRT_U8 ;
 int IRXLOAD_READONLY ;
 int IR_EQ ;
 int IR_STRREF ;
 int IR_XLOAD ;
 int LJ_TRERR_BADTYPE ;
 scalar_t__ argv2int (int *,int *) ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (int *,char) ;
 int lj_ir_kstr (int *,TYPE_1__*) ;
 int lj_trace_err (int *,int ) ;
 TYPE_1__* strV (int *) ;
 char* strVdata (int *) ;
 scalar_t__ tref_isstr (int ) ;

int32_t lj_ffrecord_select_mode(jit_State *J, TRef tr, TValue *tv)
{
  if (tref_isstr(tr) && *strVdata(tv) == '#') {
    if (strV(tv)->len == 1) {
      emitir(IRTG(IR_EQ, IRT_STR), tr, lj_ir_kstr(J, strV(tv)));
    } else {
      TRef trptr = emitir(IRT(IR_STRREF, IRT_PGC), tr, lj_ir_kint(J, 0));
      TRef trchar = emitir(IRT(IR_XLOAD, IRT_U8), trptr, IRXLOAD_READONLY);
      emitir(IRTG(IR_EQ, IRT_INT), trchar, lj_ir_kint(J, '#'));
    }
    return 0;
  } else {
    int32_t start = argv2int(J, tv);
    if (start == 0) lj_trace_err(J, LJ_TRERR_BADTYPE);
    return start;
  }
}
