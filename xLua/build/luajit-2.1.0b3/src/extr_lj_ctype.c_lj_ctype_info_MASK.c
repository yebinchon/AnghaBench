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
struct TYPE_3__ {int info; int size; } ;
typedef  int /*<<< orphan*/  CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int CTSize ;
typedef  int CTInfo ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CTA_ALIGN ; 
 int /*<<< orphan*/  CTA_QUAL ; 
 int CTFP_ALIGNED ; 
 int CTF_ALIGN ; 
 int CTMASK_CID ; 
 int CTSIZE_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

CTInfo FUNC9(CTState *cts, CTypeID id, CTSize *szp)
{
  CTInfo qual = 0;
  CType *ct = FUNC2(cts, id);
  for (;;) {
    CTInfo info = ct->info;
    if (FUNC5(info)) {
      /* Follow child. Need to look at its attributes, too. */
    } else if (FUNC4(info)) {
      if (FUNC7(info, CTA_QUAL))
	qual |= ct->size;
      else if (FUNC7(info, CTA_ALIGN) && !(qual & CTFP_ALIGNED))
	qual |= CTFP_ALIGNED + FUNC0(ct->size);
    } else {
      if (!(qual & CTFP_ALIGNED)) qual |= (info & CTF_ALIGN);
      qual |= (info & ~(CTF_ALIGN|CTMASK_CID));
      FUNC8(FUNC3(info) || FUNC6(info));
      *szp = FUNC6(info) ? CTSIZE_INVALID : ct->size;
      break;
    }
    ct = FUNC2(cts, FUNC1(info));
  }
  return qual;
}