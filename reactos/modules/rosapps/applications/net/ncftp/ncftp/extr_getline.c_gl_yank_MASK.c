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
 scalar_t__* gl_buf ; 
 int gl_cnt ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int gl_extent ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__* gl_killbuf ; 
 scalar_t__ gl_overwrite ; 
 int gl_pos ; 
 int /*<<< orphan*/  gl_prompt ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC4(void)
/* adds the kill buffer to the input buffer at current location */
{
    int  i, len;

    len = (int) FUNC3(gl_killbuf);
    if (len > 0) {
	if (gl_overwrite == 0) {
            if (gl_cnt + len >= GL_BUF_SIZE - 1)
	        FUNC1("\n*** Error: getline(): input buffer overflow\n");
            for (i=gl_cnt; i >= gl_pos; i--)
                gl_buf[i+len] = gl_buf[i];
	    for (i=0; i < len; i++)
                gl_buf[gl_pos+i] = gl_killbuf[i];
            FUNC2(gl_prompt, gl_pos, gl_pos+len);
	} else {
	    if (gl_pos + len > gl_cnt) {
                if (gl_pos + len >= GL_BUF_SIZE - 1)
	            FUNC1("\n*** Error: getline(): input buffer overflow\n");
		gl_buf[gl_pos + len] = 0;
            }
	    for (i=0; i < len; i++)
                gl_buf[gl_pos+i] = gl_killbuf[i];
	    gl_extent = len;
            FUNC2(gl_prompt, gl_pos, gl_pos+len);
	}
    } else
	FUNC0();
}