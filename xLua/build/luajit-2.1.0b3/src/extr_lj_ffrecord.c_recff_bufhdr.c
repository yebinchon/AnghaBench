
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_2__ {int tmpbuf; } ;
typedef int TRef ;


 int IRBUFHDR_RESET ;
 int IRT (int ,int ) ;
 int IRT_PGC ;
 int IR_BUFHDR ;
 TYPE_1__* J2G (int *) ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kptr (int *,int *) ;

__attribute__((used)) static TRef recff_bufhdr(jit_State *J)
{
  return emitir(IRT(IR_BUFHDR, IRT_PGC),
  lj_ir_kptr(J, &J2G(J)->tmpbuf), IRBUFHDR_RESET);
}
