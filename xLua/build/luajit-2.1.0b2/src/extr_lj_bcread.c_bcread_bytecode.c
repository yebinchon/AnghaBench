
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int framesize; } ;
typedef int MSize ;
typedef int LexState ;
typedef TYPE_1__ GCproto ;
typedef int BCIns ;


 int BCINS_AD (int ,int ,int ) ;
 int BC_FUNCF ;
 int BC_FUNCV ;
 int PROTO_VARARG ;
 int bcread_block (int *,int *,int) ;
 scalar_t__ bcread_swap (int *) ;
 int lj_bswap (int ) ;
 int * proto_bc (TYPE_1__*) ;

__attribute__((used)) static void bcread_bytecode(LexState *ls, GCproto *pt, MSize sizebc)
{
  BCIns *bc = proto_bc(pt);
  bc[0] = BCINS_AD((pt->flags & PROTO_VARARG) ? BC_FUNCV : BC_FUNCF,
     pt->framesize, 0);
  bcread_block(ls, bc+1, (sizebc-1)*(MSize)sizeof(BCIns));

  if (bcread_swap(ls)) {
    MSize i;
    for (i = 1; i < sizebc; i++) bc[i] = lj_bswap(bc[i]);
  }
}
