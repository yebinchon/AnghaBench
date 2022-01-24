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

__attribute__((used)) static void FUNC1(void) {
  FUNC0("Usage:\n\n");
  FUNC0("   cwebp [options] -q quality input.png -o output.webp\n\n");
  FUNC0("where quality is between 0 (poor) to 100 (very good).\n");
  FUNC0("Typical value is around 80.\n\n");
  FUNC0("Try -longhelp for an exhaustive list of advanced options.\n");
}