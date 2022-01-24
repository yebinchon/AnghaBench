#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int int32_t ;
struct TYPE_8__ {TYPE_1__* g; int /*<<< orphan*/  L; } ;
struct TYPE_7__ {int info; } ;
struct TYPE_6__ {int /*<<< orphan*/  tmptv2; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ CType ;
typedef  TYPE_3__ CTState ;
typedef  int CTSize ;
typedef  int CTInfo ;

/* Variables and functions */
 int CTF_BOOL ; 
 int CTF_UNSIGNED ; 
 int /*<<< orphan*/  LJ_DUALNUM ; 
 int /*<<< orphan*/  LJ_ERR_FFI_NYIPACKBIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(CTState *cts, CType *s, TValue *o, uint8_t *sp)
{
  CTInfo info = s->info;
  CTSize pos, bsz;
  uint32_t val;
  FUNC5(FUNC3(info));
  /* NYI: packed bitfields may cause misaligned reads. */
  switch (FUNC1(info)) {
  case 4: val = *(uint32_t *)sp; break;
  case 2: val = *(uint16_t *)sp; break;
  case 1: val = *(uint8_t *)sp; break;
  default: FUNC5(0); val = 0; break;
  }
  /* Check if a packed bitfield crosses a container boundary. */
  pos = FUNC2(info);
  bsz = FUNC0(info);
  FUNC5(pos < 8*FUNC1(info));
  FUNC5(bsz > 0 && bsz <= 8*FUNC1(info));
  if (pos + bsz > 8*FUNC1(info))
    FUNC4(cts->L, LJ_ERR_FFI_NYIPACKBIT);
  if (!(info & CTF_BOOL)) {
    CTSize shift = 32 - bsz;
    if (!(info & CTF_UNSIGNED)) {
      FUNC7(o, (int32_t)(val << (shift-pos)) >> shift);
    } else {
      val = (val << (shift-pos)) >> shift;
      if (!LJ_DUALNUM || (int32_t)val < 0)
	FUNC8(o, (lua_Number)(uint32_t)val);
      else
	FUNC7(o, (int32_t)val);
    }
  } else {
    uint32_t b = (val >> pos) & 1;
    FUNC5(bsz == 1);
    FUNC6(o, b);
    FUNC6(&cts->g->tmptv2, b);  /* Remember for trace recorder. */
  }
  return 0;  /* No GC step needed. */
}