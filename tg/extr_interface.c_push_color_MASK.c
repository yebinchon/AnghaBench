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
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const** color_stack ; 
 int color_stack_pos ; 
 scalar_t__ disable_colors ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

void FUNC2 (const char *color) {
  if (disable_colors) { return; }
  FUNC0 (color_stack_pos < 10);
  color_stack[color_stack_pos ++] = color;
  FUNC1 ("%s", color);
}