
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ GCproto ;
typedef int BCIns ;


 scalar_t__ BC_ILOOP ;
 scalar_t__ BC_LOOP ;
 int PROTO_ILOOP ;
 scalar_t__ bc_op (int ) ;
 int setbc_op (int *,int) ;

__attribute__((used)) static void blacklist_pc(GCproto *pt, BCIns *pc)
{
  setbc_op(pc, (int)bc_op(*pc)+(int)BC_ILOOP-(int)BC_LOOP);
  pt->flags |= PROTO_ILOOP;
}
