#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  jit_State ;
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_3__ {int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_1__ IRIns ;

/* Variables and functions */
#define  IRT_I16 136 
#define  IRT_I64 135 
#define  IRT_I8 134 
#define  IRT_INT 133 
#define  IRT_NUM 132 
#define  IRT_U16 131 
#define  IRT_U32 130 
#define  IRT_U64 129 
#define  IRT_U8 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TRef FUNC6(jit_State *J, IRIns *ir, const void *p)
{
  int32_t k;
  switch (FUNC0(ir->t)) {
  case IRT_NUM: return FUNC5(J, *(uint64_t *)p);
  case IRT_I8: k = (int32_t)*(int8_t *)p; break;
  case IRT_U8: k = (int32_t)*(uint8_t *)p; break;
  case IRT_I16: k = (int32_t)(int16_t)FUNC1(p); break;
  case IRT_U16: k = (int32_t)(uint16_t)FUNC1(p); break;
  case IRT_INT: case IRT_U32: k = (int32_t)FUNC2(p); break;
  case IRT_I64: case IRT_U64: return FUNC4(J, *(uint64_t *)p);
  default: return 0;
  }
  return FUNC3(J, k);
}