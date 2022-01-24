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
 int /*<<< orphan*/ * gl_buf ; 
 int gl_cnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int gl_pos ; 
 int /*<<< orphan*/  gl_prompt ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(int direction)

/* move forward or backword one word */
{
    int pos = gl_pos;

    if (direction > 0) {		/* forward */
        while (!FUNC1(gl_buf[pos]) && pos < gl_cnt)
	    pos++;
	while (FUNC1(gl_buf[pos]) && pos < gl_cnt)
	    pos++;
    } else {				/* backword */
	if (pos > 0)
	    pos--;
	while (FUNC1(gl_buf[pos]) && pos > 0)
	    pos--;
        while (!FUNC1(gl_buf[pos]) && pos > 0)
	    pos--;
	if (pos < gl_cnt && FUNC1(gl_buf[pos]))   /* move onto word */
	    pos++;
    }
    FUNC0(gl_prompt, -1, pos);
}