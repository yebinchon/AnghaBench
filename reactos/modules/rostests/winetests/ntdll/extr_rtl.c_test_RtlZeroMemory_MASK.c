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
 int /*<<< orphan*/  pRtlZeroMemory ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
  if (!pRtlZeroMemory)
  {
    FUNC2("RtlZeroMemory is not available\n");
    return;
  }

  /* Length should be in bytes and not rounded. */
  FUNC1(0); FUNC0("This is a test!");
  FUNC1(1); FUNC0("\0his is a test!");
  FUNC1(2); FUNC0("\0\0is is a test!");
  FUNC1(3); FUNC0("\0\0\0s is a test!");
  FUNC1(4); FUNC0("\0\0\0\0 is a test!");
  FUNC1(5); FUNC0("\0\0\0\0\0is a test!");
  FUNC1(6); FUNC0("\0\0\0\0\0\0s a test!");
  FUNC1(7); FUNC0("\0\0\0\0\0\0\0 a test!");
  FUNC1(8); FUNC0("\0\0\0\0\0\0\0\0a test!");
  FUNC1(9); FUNC0("\0\0\0\0\0\0\0\0\0 test!");
}