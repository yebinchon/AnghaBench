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
typedef  scalar_t__ strm_string ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ STRM_TAG_STRING_F ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int
FUNC4(strm_string a, strm_string b)
{
  if (a == b) return TRUE;
  if (FUNC3(a) == STRM_TAG_STRING_F &&
      FUNC3(b) == STRM_TAG_STRING_F) {
    /* pointer comparison is OK if strings are interned */
    return FALSE;
  }
  if (FUNC1(a) != FUNC1(b)) return FALSE;
  if (FUNC0(FUNC2(a), FUNC2(b), FUNC1(a)) == 0)
    return TRUE;
  return FALSE;
}