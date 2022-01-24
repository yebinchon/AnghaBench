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
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static void
FUNC5 (void)
/* Copy an unknown or uninteresting variable-length marker */
{
  unsigned int length;

  /* Get the marker parameter length count */
  length = FUNC2();
  FUNC4(length);
  /* Length includes itself, so must be at least 2 */
  if (length < 2)
    FUNC0("Erroneous JPEG marker length");
  length -= 2;
  /* Skip over the remaining bytes */
  while (length > 0) {
    FUNC3(FUNC1());
    length--;
  }
}