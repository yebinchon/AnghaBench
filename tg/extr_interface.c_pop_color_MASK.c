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
 char* COLOR_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char** color_stack ; 
 int color_stack_pos ; 
 scalar_t__ disable_colors ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2 (void) {
  if (disable_colors) { return; }
  FUNC0 (color_stack_pos > 0);
  color_stack_pos --;
  if (color_stack_pos >= 1) {
    FUNC1 ("%s", color_stack[color_stack_pos - 1]);
  } else {
    FUNC1 ("%s", COLOR_NORMAL);
  }
}