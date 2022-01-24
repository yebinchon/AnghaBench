#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  scalar_t__ int32_t ;
struct TYPE_5__ {int info; int size; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int CTF_UNSIGNED ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(CTState *cts, TValue *o, CType *ct)
{
  CType *ctt = FUNC0(cts, ct);
  FUNC2(FUNC1(ctt->info) && ctt->size <= 4);
  /* Constants are already zero-extended/sign-extended to 32 bits. */
  if ((ctt->info & CTF_UNSIGNED) && (int32_t)ct->size < 0)
    FUNC4(o, (lua_Number)(uint32_t)ct->size);
  else
    FUNC3(o, (int32_t)ct->size);
}