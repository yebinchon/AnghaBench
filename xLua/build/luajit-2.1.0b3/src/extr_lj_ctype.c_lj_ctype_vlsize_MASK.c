#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_7__ {int size; int /*<<< orphan*/  info; scalar_t__ sib; } ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTSize ;

/* Variables and functions */
 int CTSIZE_INVALID ; 
 scalar_t__ CT_FIELD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

CTSize FUNC9(CTState *cts, CType *ct, CTSize nelem)
{
  uint64_t xsz = 0;
  if (FUNC3(ct->info)) {
    CTypeID arrid = 0, fid = ct->sib;
    xsz = ct->size;  /* Add the struct size. */
    while (fid) {
      CType *ctf = FUNC1(cts, fid);
      if (FUNC7(ctf->info) == CT_FIELD)
	arrid = FUNC0(ctf->info);  /* Remember last field of VLS. */
      fid = ctf->sib;
    }
    ct = FUNC5(cts, arrid);
  }
  FUNC8(FUNC4(ct->info));  /* Must be a VLA. */
  ct = FUNC6(cts, ct);  /* Get array element. */
  FUNC8(FUNC2(ct->info));
  /* Calculate actual size of VLA and check for overflow. */
  xsz += (uint64_t)ct->size * nelem;
  return xsz < 0x80000000u ? (CTSize)xsz : CTSIZE_INVALID;
}