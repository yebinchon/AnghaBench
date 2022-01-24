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
 int GL_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* gl_buf ; 
 int gl_cnt ; 
 scalar_t__ gl_ellipses_during_completion ; 
 int gl_extent ; 
 int gl_pos ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int gl_scroll ; 
 scalar_t__ FUNC3 (char const*) ; 
 int gl_termw ; 
 int gl_width ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(const char *prompt, int change, int cursor)


/*
 * This function is used both for redrawing when input changes or for
 * moving within the input line.  The parameters are:
 *   prompt:  compared to last_prompt[] for changes;
 *   change : the index of the start of changes in the input buffer,
 *            with -1 indicating no changes, -2 indicating we're on
 *            a new line, redraw everything.
 *   cursor : the desired location of the cursor after the call.
 *            A value of GL_BUF_SIZE can be used  to indicate the cursor should
 *            move just past the end of the input line.
 */
{
    static int   gl_shift;	/* index of first on screen character */
    static int   off_right;	/* true if more text right of screen */
    static int   off_left;	/* true if more text left of screen */
    static char  last_prompt[80] = "";
    int          left = 0, right = -1;		/* bounds for redraw */
    int          pad;		/* how much to erase at end of line */
    int          backup;        /* how far to backup before fixing */
    int          new_shift;     /* value of shift based on cursor */
    int          extra;         /* adjusts when shift (scroll) happens */
    int          i;
    int          new_right = -1; /* alternate right bound, using gl_extent */
    int          l1, l2;

    if (change == -2) {   /* reset */
	gl_pos = gl_cnt = gl_shift = off_right = off_left = 0;
	FUNC1('\r');
	FUNC2(prompt);
	FUNC5(last_prompt, prompt);
	change = 0;
        gl_width = gl_termw - (int) FUNC3(prompt);
    } else if (FUNC4(prompt, last_prompt) != 0) {
	l1 = (int) FUNC3(last_prompt);
	l2 = (int) FUNC3(prompt);
	gl_cnt = gl_cnt + l1 - l2;
	FUNC5(last_prompt, prompt);
	FUNC1('\r');
	FUNC2(prompt);
	gl_pos = gl_shift;
        gl_width = gl_termw - l2;
	change = 0;
    }
    pad = (off_right)? gl_width - 1 : gl_cnt - gl_shift;   /* old length */
    backup = gl_pos - gl_shift;
    if (change >= 0) {
        gl_cnt = (int) FUNC6(gl_buf);
        if (change > gl_cnt)
	    change = gl_cnt;
    }
    if (cursor > gl_cnt) {
	if (cursor != GL_BUF_SIZE) {		/* GL_BUF_SIZE means end of line */
	    if (gl_ellipses_during_completion == 0) {
	        FUNC0();
	    }
	}
	cursor = gl_cnt;
    }
    if (cursor < 0) {
	FUNC0();
	cursor = 0;
    }
    if (off_right || (off_left && cursor < gl_shift + gl_width - gl_scroll / 2))
	extra = 2;			/* shift the scrolling boundary */
    else
	extra = 0;
    new_shift = cursor + extra + gl_scroll - gl_width;
    if (new_shift > 0) {
	new_shift /= gl_scroll;
	new_shift *= gl_scroll;
    } else
	new_shift = 0;
    if (new_shift != gl_shift) {	/* scroll occurs */
	gl_shift = new_shift;
	off_left = (gl_shift)? 1 : 0;
	off_right = (gl_cnt > gl_shift + gl_width - 1)? 1 : 0;
        left = gl_shift;
	new_right = right = (off_right)? gl_shift + gl_width - 2 : gl_cnt;
    } else if (change >= 0) {		/* no scroll, but text changed */
	if (change < gl_shift + off_left) {
	    left = gl_shift;
	} else {
	    left = change;
	    backup = gl_pos - change;
	}
	off_right = (gl_cnt > gl_shift + gl_width - 1)? 1 : 0;
	right = (off_right)? gl_shift + gl_width - 2 : gl_cnt;
	new_right = (gl_extent && (right > left + gl_extent))?
	             left + gl_extent : right;
    }
    pad -= (off_right)? gl_width - 1 : gl_cnt - gl_shift;
    pad = (pad < 0)? 0 : pad;
    if (left <= right) {		/* clean up screen */
	for (i=0; i < backup; i++)
	    FUNC1('\b');
	if (left == gl_shift && off_left) {
	    FUNC1('$');
	    left++;
        }
	for (i=left; i < new_right; i++)
	    FUNC1(gl_buf[i]);
	gl_pos = new_right;
	if (off_right && new_right == right) {
	    FUNC1('$');
	    gl_pos++;
	} else {
	    for (i=0; i < pad; i++)	/* erase remains of prev line */
		FUNC1(' ');
	    gl_pos += pad;
	}
    }
    i = gl_pos - cursor;		/* move to final cursor location */
    if (i > 0) {
	while (i--)
	   FUNC1('\b');
    } else {
	for (i=gl_pos; i < cursor; i++)
	    FUNC1(gl_buf[i]);
    }
    gl_pos = cursor;
}