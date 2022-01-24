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
 char* gl_buf ; 
 int gl_cnt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 char* gl_killbuf ; 
 int gl_pos ; 
 int /*<<< orphan*/  gl_prompt ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC4(int direction)
{
    int pos = gl_pos;
    int startpos = gl_pos;
    int tmp;
    int i;

    if (direction > 0) {		/* forward */
        while (!FUNC2(gl_buf[pos]) && pos < gl_cnt)
	    pos++;
	while (FUNC2(gl_buf[pos]) && pos < gl_cnt)
	    pos++;
    } else {				/* backward */
	if (pos > 0)
	    pos--;
	while (FUNC2(gl_buf[pos]) && pos > 0)
	    pos--;
        while (!FUNC2(gl_buf[pos]) && pos > 0)
	    pos--;
	if (pos < gl_cnt && FUNC2(gl_buf[pos]))   /* move onto word */
	    pos++;
    }
    if (pos < startpos) {
    	tmp = pos;
	pos = startpos;
	startpos = tmp;
    }
    FUNC3(gl_killbuf, gl_buf + startpos, (size_t) (pos - startpos));
    gl_killbuf[pos - startpos] = '\0';
    if (FUNC2(gl_killbuf[pos - startpos - 1]))
    	gl_killbuf[pos - startpos - 1] = '\0';
    FUNC1(gl_prompt, -1, startpos);
    for (i=0, tmp=pos - startpos; i<tmp; i++)
    	FUNC0(0, 0);
}