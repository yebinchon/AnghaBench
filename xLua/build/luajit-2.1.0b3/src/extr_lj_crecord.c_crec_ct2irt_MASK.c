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
typedef  int uint32_t ;
struct TYPE_5__ {int info; int size; } ;
typedef  scalar_t__ IRType ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int CTF_FP ; 
 int CTF_UNSIGNED ; 
 scalar_t__ IRT_CDATA ; 
 scalar_t__ IRT_FLOAT ; 
 scalar_t__ IRT_I8 ; 
 scalar_t__ IRT_NUM ; 
 scalar_t__ IRT_P32 ; 
 scalar_t__ IRT_P64 ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static IRType FUNC7(CTState *cts, CType *ct)
{
  if (FUNC3(ct->info)) ct = FUNC1(cts, ct);
  if (FUNC0(FUNC4(ct->info))) {
    if ((ct->info & CTF_FP)) {
      if (ct->size == sizeof(double))
	return IRT_NUM;
      else if (ct->size == sizeof(float))
	return IRT_FLOAT;
    } else {
      uint32_t b = FUNC6(ct->size);
      if (b <= 3)
	return IRT_I8 + 2*b + ((ct->info & CTF_UNSIGNED) ? 1 : 0);
    }
  } else if (FUNC5(ct->info)) {
    return (LJ_64 && ct->size == 8) ? IRT_P64 : IRT_P32;
  } else if (FUNC2(ct->info)) {
    if (ct->size == 2*sizeof(double))
      return IRT_NUM;
    else if (ct->size == 2*sizeof(float))
      return IRT_FLOAT;
  }
  return IRT_CDATA;
}