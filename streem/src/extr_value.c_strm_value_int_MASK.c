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
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
#define  STRM_TAG_INT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int const FUNC4 (int /*<<< orphan*/ ) ; 

int32_t
FUNC5(strm_value v)
{
  switch (FUNC4(v)) {
  case STRM_TAG_INT:
    return FUNC3(v);
  default:
    if (FUNC1(v))
      return FUNC2(v);
    FUNC0(FUNC4(v) == STRM_TAG_INT);
    break;
  }
  /* not reached */
  return 0;
}