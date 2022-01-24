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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  strm_value ;

/* Variables and functions */
 int FALSE ; 
#define  STRM_TAG_BOOL 129 
#define  STRM_TAG_PTR 128 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(strm_value v)
{
  uint64_t i = FUNC2(v);

  if (i == 0) {
    switch (FUNC1(v)) {
    case STRM_TAG_BOOL:         /* false */
    case STRM_TAG_PTR:          /* nil */
      break;
    default:
      FUNC0(FUNC1(v) == STRM_TAG_BOOL);
      break;
    }
    return FALSE;
  }
  else {
    return TRUE;
  }
}