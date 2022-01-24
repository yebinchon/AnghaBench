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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ gl_init_done ; 
 int /*<<< orphan*/  gl_pos ; 
 int /*<<< orphan*/  gl_prompt ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void
FUNC2(void)
/* emit a newline, reset and redraw prompt and current input line */
{
    if (gl_init_done > 0) {
        FUNC1('\n');
        FUNC0(gl_prompt, -2, gl_pos);
    }
}