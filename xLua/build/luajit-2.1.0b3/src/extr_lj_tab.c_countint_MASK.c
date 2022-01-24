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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ lua_Number ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  cTValue ;

/* Variables and functions */
 scalar_t__ LJ_MAX_ASIZE ; 
 size_t FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC6(cTValue *key, uint32_t *bins)
{
  FUNC2(!FUNC4(key));
  if (FUNC5(key)) {
    lua_Number nk = FUNC3(key);
    int32_t k = FUNC1(nk);
    if ((uint32_t)k < LJ_MAX_ASIZE && nk == (lua_Number)k) {
      bins[(k > 2 ? FUNC0((uint32_t)(k-1)) : 0)]++;
      return 1;
    }
  }
  return 0;
}