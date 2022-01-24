#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  scalar_t__ SFormat ;
typedef  int /*<<< orphan*/  SBuf ;

/* Variables and functions */
 scalar_t__ STRFMT_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

SBuf *FUNC3(SBuf *sb, SFormat sf, lua_Number n)
{
  int64_t k = (int64_t)n;
  if (FUNC0(k) && sf == STRFMT_INT)
    return FUNC2(sb, (int32_t)k);  /* Shortcut for plain %d. */
  else
    return FUNC1(sb, sf, (uint64_t)k);
}