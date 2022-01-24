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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  pRtlFillMemory ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
  if (!pRtlFillMemory)
  {
    FUNC2("RtlFillMemory is not available\n");
    return;
  }

  /* Length should be in bytes and not rounded. Use strcmp to ensure we
   * didn't write past the end (the remainder of the string should match)
   */
  FUNC1(0); FUNC0("This is a test!");
  FUNC1(1); FUNC0("xhis is a test!");
  FUNC1(2); FUNC0("xxis is a test!");
  FUNC1(3); FUNC0("xxxs is a test!");
  FUNC1(4); FUNC0("xxxx is a test!");
  FUNC1(5); FUNC0("xxxxxis a test!");
  FUNC1(6); FUNC0("xxxxxxs a test!");
  FUNC1(7); FUNC0("xxxxxxx a test!");
  FUNC1(8); FUNC0("xxxxxxxxa test!");
  FUNC1(9); FUNC0("xxxxxxxxx test!");
}