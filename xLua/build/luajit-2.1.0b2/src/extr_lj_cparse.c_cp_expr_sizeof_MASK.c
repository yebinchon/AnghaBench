#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  cts; } ;
struct TYPE_14__ {scalar_t__ id; unsigned int u32; } ;
typedef  scalar_t__ CTSize ;
typedef  int /*<<< orphan*/  CTInfo ;
typedef  TYPE_1__ CPValue ;
typedef  TYPE_2__ CPState ;

/* Variables and functions */
 scalar_t__ CTID_A_CCHAR ; 
 scalar_t__ CTID_UINT32 ; 
 scalar_t__ CTSIZE_INVALID ; 
 int /*<<< orphan*/  LJ_ERR_FFI_INVSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void FUNC9(CPState *cp, CPValue *k, int wantsz)
{
  CTSize sz;
  CTInfo info;
  if (FUNC6(cp, '(')) {
    if (FUNC5(cp))
      k->id = FUNC1(cp);
    else
      FUNC3(cp, k);
    FUNC0(cp, ')');
  } else {
    FUNC4(cp, k);
  }
  info = FUNC8(cp->cts, k->id, &sz);
  if (wantsz) {
    if (sz != CTSIZE_INVALID)
      k->u32 = sz;
    else if (k->id != CTID_A_CCHAR)  /* Special case for sizeof("string"). */
      FUNC2(cp, LJ_ERR_FFI_INVSIZE);
  } else {
    k->u32 = 1u << FUNC7(info);
  }
  k->id = CTID_UINT32;  /* Really size_t. */
}