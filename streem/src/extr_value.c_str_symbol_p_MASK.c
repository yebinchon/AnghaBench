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
typedef  int /*<<< orphan*/  strm_string ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(strm_string str)
{
  const char* p = FUNC3(str);
  const char* pend = p + FUNC2(str);

  if (!FUNC1((int)*p) && *p != '_')
    return FALSE;
  p++;
  while (p<pend) {
    if (!FUNC0((int)*p) && *p != '_')
      return FALSE;
    p++;
  }
  return TRUE;
}