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
typedef  scalar_t__ strm_value ;
typedef  int /*<<< orphan*/  strm_cfunc ;

/* Variables and functions */
 int FALSE ; 
#define  STRM_TAG_ARRAY 133 
#define  STRM_TAG_CFUNC 132 
#define  STRM_TAG_PTR 131 
#define  STRM_TAG_STRING_F 130 
#define  STRM_TAG_STRING_O 129 
#define  STRM_TAG_STRUCT 128 
 int TRUE ; 
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int
FUNC7(strm_value a, strm_value b)
{
  if (a == b) return TRUE;
  if (FUNC4(a) != FUNC4(b)) goto typediff;
  switch (FUNC4(a)) {
  case STRM_TAG_ARRAY:
  case STRM_TAG_STRUCT:
    return FUNC0(a, b);
  case STRM_TAG_STRING_O:
  case STRM_TAG_STRING_F:
    return FUNC2(a, b);
  case STRM_TAG_CFUNC:
    return (strm_cfunc)(intptr_t)FUNC5(a) == (strm_cfunc)(intptr_t)FUNC5(b);
  case STRM_TAG_PTR:
    return FUNC6(a) == FUNC6(b);
  typediff:
  default:
    if (FUNC1(a) && FUNC1(b)) {
      return FUNC3(a) == FUNC3(b);
    }
    return FALSE;
  }
}