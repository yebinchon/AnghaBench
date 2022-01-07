
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jit_State ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ len; } ;
typedef int TRef ;
typedef TYPE_1__ GCstr ;


 int IRTGI (int ) ;
 int IRTI (int ) ;
 int IR_ADD ;
 int IR_EQ ;
 int IR_GE ;
 int IR_LT ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (int *,int) ;

__attribute__((used)) static TRef recff_string_start(jit_State *J, GCstr *s, int32_t *st, TRef tr,
          TRef trlen, TRef tr0)
{
  int32_t start = *st;
  if (start < 0) {
    emitir(IRTGI(IR_LT), tr, tr0);
    tr = emitir(IRTI(IR_ADD), trlen, tr);
    start = start + (int32_t)s->len;
    emitir(start < 0 ? IRTGI(IR_LT) : IRTGI(IR_GE), tr, tr0);
    if (start < 0) {
      tr = tr0;
      start = 0;
    }
  } else if (start == 0) {
    emitir(IRTGI(IR_EQ), tr, tr0);
    tr = tr0;
  } else {
    tr = emitir(IRTI(IR_ADD), tr, lj_ir_kint(J, -1));
    emitir(IRTGI(IR_GE), tr, tr0);
    start--;
  }
  *st = start;
  return tr;
}
