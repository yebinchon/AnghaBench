
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int pt; TYPE_1__* rbchash; int pc; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_4__ {int pt; int pc; int ref; } ;
typedef int TRef ;


 int IRTG (int ,int ) ;
 int IRT_TAB ;
 int IR_TNEW ;
 int RBCHASH_SLOTS ;
 int emitir (int ,int,int) ;
 int obj2gco (int ) ;
 int setgcref (int ,int ) ;
 int setmref (int ,int ) ;
 int tref_ref (int) ;

__attribute__((used)) static TRef rec_tnew(jit_State *J, uint32_t ah)
{
  uint32_t asize = ah & 0x7ff;
  uint32_t hbits = ah >> 11;
  TRef tr;
  if (asize == 0x7ff) asize = 0x801;
  tr = emitir(IRTG(IR_TNEW, IRT_TAB), asize, hbits);





  return tr;
}
