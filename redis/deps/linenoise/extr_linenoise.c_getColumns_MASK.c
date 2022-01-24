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
struct winsize {scalar_t__ ws_col; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int,char*,int) ; 

__attribute__((used)) static int FUNC5(int ifd, int ofd) {
    struct winsize ws;

    if (FUNC1(1, TIOCGWINSZ, &ws) == -1 || ws.ws_col == 0) {
        /* ioctl() failed. Try to query the terminal itself. */
        int start, cols;

        /* Get the initial position so we can restore it later. */
        start = FUNC0(ifd,ofd);
        if (start == -1) goto failed;

        /* Go to right margin and get position. */
        if (FUNC4(ofd,"\x1b[999C",6) != 6) goto failed;
        cols = FUNC0(ifd,ofd);
        if (cols == -1) goto failed;

        /* Restore position. */
        if (cols > start) {
            char seq[32];
            FUNC2(seq,32,"\x1b[%dD",cols-start);
            if (FUNC4(ofd,seq,FUNC3(seq)) == -1) {
                /* Can't recover... */
            }
        }
        return cols;
    } else {
        return ws.ws_col;
    }

failed:
    return 80;
}