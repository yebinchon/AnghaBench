#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_10__ {int /*<<< orphan*/  startins; } ;
struct TYPE_9__ {int /*<<< orphan*/  sb; } ;
struct TYPE_8__ {scalar_t__ sizebc; int flags; scalar_t__ trace; } ;
typedef  scalar_t__ MSize ;
typedef  TYPE_1__ GCproto ;
typedef  TYPE_2__ BCWriteCtx ;
typedef  int BCReg ;
typedef  scalar_t__ BCOp ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ BC_FORL ; 
 scalar_t__ BC_IFORL ; 
 scalar_t__ BC_IITERL ; 
 scalar_t__ BC_ILOOP ; 
 scalar_t__ BC_JFORI ; 
 scalar_t__ BC_JFORL ; 
 scalar_t__ BC_JITERL ; 
 scalar_t__ BC_JLOOP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int,int) ; 
 int PROTO_ILOOP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *FUNC9(BCWriteCtx *ctx, char *p, GCproto *pt)
{
  MSize nbc = pt->sizebc-1;  /* Omit the [JI]FUNC* header. */
#if LJ_HASJIT
  uint8_t *q = (uint8_t *)p;
#endif
  p = FUNC5(p, FUNC6(pt)+1, nbc*(MSize)sizeof(BCIns));
  FUNC2(ctx);
#if LJ_HASJIT
  /* Unpatch modified bytecode containing ILOOP/JLOOP etc. */
  if ((pt->flags & PROTO_ILOOP) || pt->trace) {
    jit_State *J = L2J(sbufL(&ctx->sb));
    MSize i;
    for (i = 0; i < nbc; i++, q += sizeof(BCIns)) {
      BCOp op = (BCOp)q[LJ_ENDIAN_SELECT(0, 3)];
      if (op == BC_IFORL || op == BC_IITERL || op == BC_ILOOP ||
	  op == BC_JFORI) {
	q[LJ_ENDIAN_SELECT(0, 3)] = (uint8_t)(op-BC_IFORL+BC_FORL);
      } else if (op == BC_JFORL || op == BC_JITERL || op == BC_JLOOP) {
	BCReg rd = q[LJ_ENDIAN_SELECT(2, 1)] + (q[LJ_ENDIAN_SELECT(3, 0)] << 8);
	BCIns ins = traceref(J, rd)->startins;
	q[LJ_ENDIAN_SELECT(0, 3)] = (uint8_t)(op-BC_JFORL+BC_FORL);
	q[LJ_ENDIAN_SELECT(2, 1)] = bc_c(ins);
	q[LJ_ENDIAN_SELECT(3, 0)] = bc_b(ins);
      }
    }
  }
#endif
  return p;
}