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
 scalar_t__* gl_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  gl_pos ; 
 int /*<<< orphan*/  gl_prompt ; 
 scalar_t__ gl_search_mode ; 
 int /*<<< orphan*/  hist_last ; 
 int /*<<< orphan*/  hist_pos ; 

__attribute__((used)) static void
FUNC2(void)
{
    gl_search_mode = 0;
    if (gl_buf[0] == 0)		/* not found, reset hist list */
        hist_pos = hist_last;
    if (&gl_in_hook)
	FUNC1(gl_buf);
    FUNC0(gl_prompt, 0, gl_pos);
}