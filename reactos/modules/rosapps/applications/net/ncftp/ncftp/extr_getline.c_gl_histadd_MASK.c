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
 size_t HIST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ gl_init_done ; 
 char** hist_buf ; 
 char* hist_empty_elem ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t hist_last ; 
 size_t hist_pos ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,size_t) ; 

void
FUNC6(char *buf)
{
    static char *prev = 0;
    char *p = buf;
    int len;

    /* in case we call gl_histadd() before we call getline() */
    if (gl_init_done < 0) {		/* -1 only on startup */
        FUNC1();
        gl_init_done = 0;
    }
    while (*p == ' ' || *p == '\t' || *p == '\n')
	p++;
    if (*p) {
	len = (int) FUNC4(buf);
	if (FUNC3(p, '\n')) 	/* previously line already has NL stripped */
	    len--;
	if ((prev == 0) || ((int) FUNC4(prev) != len) ||
			    FUNC5(prev, buf, (size_t) len) != 0) {
            hist_buf[hist_last] = FUNC2(buf);
	    prev = hist_buf[hist_last];
            hist_last = (hist_last + 1) % HIST_SIZE;
            if (hist_buf[hist_last] && *hist_buf[hist_last]) {
	        FUNC0(hist_buf[hist_last]);
            }
	    hist_buf[hist_last] = hist_empty_elem;
	}
    }
    hist_pos = hist_last;
}