
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int jit_State ;
struct TYPE_10__ {int startins; } ;
struct TYPE_9__ {int sb; } ;
struct TYPE_8__ {scalar_t__ sizebc; int flags; scalar_t__ trace; } ;
typedef scalar_t__ MSize ;
typedef TYPE_1__ GCproto ;
typedef TYPE_2__ BCWriteCtx ;
typedef int BCReg ;
typedef scalar_t__ BCOp ;
typedef int BCIns ;


 scalar_t__ BC_FORL ;
 scalar_t__ BC_IFORL ;
 scalar_t__ BC_IITERL ;
 scalar_t__ BC_ILOOP ;
 scalar_t__ BC_JFORI ;
 scalar_t__ BC_JFORL ;
 scalar_t__ BC_JITERL ;
 scalar_t__ BC_JLOOP ;
 int * L2J (int ) ;
 size_t LJ_ENDIAN_SELECT (int,int) ;
 int PROTO_ILOOP ;
 int UNUSED (TYPE_2__*) ;
 int bc_b (int ) ;
 int bc_c (int ) ;
 char* lj_buf_wmem (char*,scalar_t__,scalar_t__) ;
 scalar_t__ proto_bc (TYPE_1__*) ;
 int sbufL (int *) ;
 TYPE_3__* traceref (int *,int) ;

__attribute__((used)) static char *bcwrite_bytecode(BCWriteCtx *ctx, char *p, GCproto *pt)
{
  MSize nbc = pt->sizebc-1;



  p = lj_buf_wmem(p, proto_bc(pt)+1, nbc*(MSize)sizeof(BCIns));
  UNUSED(ctx);
  return p;
}
