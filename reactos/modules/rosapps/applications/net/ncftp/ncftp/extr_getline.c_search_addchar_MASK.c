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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * hist_buf ; 
 size_t hist_last ; 
 size_t hist_pos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ search_forw_flg ; 
 size_t search_last ; 
 scalar_t__ search_pos ; 
 int /*<<< orphan*/  search_prompt ; 
 int /*<<< orphan*/  search_string ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int c)
{
    char *loc;

    FUNC3(c);
    if (c < 0) {
	if (search_pos > 0) {
	    hist_pos = search_last;
	} else {
	    gl_buf[0] = 0;
	    hist_pos = hist_last;
	}
	FUNC4(gl_buf, hist_buf[hist_pos]);
    }
    if ((loc = FUNC5(gl_buf, search_string)) != 0) {
	FUNC0(search_prompt, 0, (int) (loc - gl_buf));
    } else if (search_pos > 0) {
        if (search_forw_flg) {
	    FUNC2(0);
        } else {
	    FUNC1(0);
        }
    } else {
	FUNC0(search_prompt, 0, 0);
    }
}