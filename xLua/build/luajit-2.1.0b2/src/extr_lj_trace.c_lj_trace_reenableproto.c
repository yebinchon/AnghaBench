
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; size_t sizebc; } ;
typedef TYPE_1__ GCproto ;
typedef size_t BCPos ;
typedef scalar_t__ BCOp ;
typedef int BCIns ;


 int BC_FUNCF ;
 scalar_t__ BC_IFORL ;
 scalar_t__ BC_IFUNCF ;
 scalar_t__ BC_IITERL ;
 scalar_t__ BC_ILOOP ;
 scalar_t__ BC_LOOP ;
 int PROTO_ILOOP ;
 scalar_t__ bc_op (int ) ;
 int * proto_bc (TYPE_1__*) ;
 int setbc_op (int *,int) ;

void lj_trace_reenableproto(GCproto *pt)
{
  if ((pt->flags & PROTO_ILOOP)) {
    BCIns *bc = proto_bc(pt);
    BCPos i, sizebc = pt->sizebc;;
    pt->flags &= ~PROTO_ILOOP;
    if (bc_op(bc[0]) == BC_IFUNCF)
      setbc_op(&bc[0], BC_FUNCF);
    for (i = 1; i < sizebc; i++) {
      BCOp op = bc_op(bc[i]);
      if (op == BC_IFORL || op == BC_IITERL || op == BC_ILOOP)
 setbc_op(&bc[i], (int)op+(int)BC_LOOP-(int)BC_ILOOP);
    }
  }
}
