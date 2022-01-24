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
 scalar_t__ dest ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  src ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  if (!&pRtlMoveMemory)
  {
    FUNC5("RtlMoveMemory is not available\n");
    return;
  }

  /* Length should be in bytes and not rounded. Use strcmp to ensure we
   * didn't write past the end (it checks for the final NUL left by memset)
   */
  FUNC1(0); FUNC0("");
  FUNC1(1); FUNC0("T");
  FUNC1(2); FUNC0("Th");
  FUNC1(3); FUNC0("Thi");
  FUNC1(4); FUNC0("This");
  FUNC1(5); FUNC0("This ");
  FUNC1(6); FUNC0("This i");
  FUNC1(7); FUNC0("This is");
  FUNC1(8); FUNC0("This is ");
  FUNC1(9); FUNC0("This is a");

  /* Overlapping */
  FUNC3(dest, src); FUNC2(dest, dest + 1, FUNC4(src) - 1);
  FUNC0("his is a test!!");
  FUNC3(dest, src); FUNC2(dest + 1, dest, FUNC4(src));
  FUNC0("TThis is a test!");
}