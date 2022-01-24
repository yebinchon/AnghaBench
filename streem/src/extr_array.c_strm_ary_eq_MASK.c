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
typedef  size_t strm_int ;
typedef  scalar_t__ strm_array ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(strm_array a, strm_array b)
{
  strm_int i, len;

  if (a == b) return TRUE;
  if (FUNC0(a) != FUNC0(b)) return FALSE;
  for (i=0, len=FUNC0(a); i<len; i++) {
    if (!FUNC2(FUNC1(a)[i], FUNC1(b)[i])) {
      return FALSE;
    }
  }
  return TRUE;
}