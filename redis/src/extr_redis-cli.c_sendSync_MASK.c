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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ RDB_EOF_MARK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 unsigned long long FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int,char*,int) ; 

unsigned long long FUNC9(int fd, char *out_eof) {
    /* To start we need to send the SYNC command and return the payload.
     * The hiredis client lib does not understand this part of the protocol
     * and we don't want to mess with its buffers, so everything is performed
     * using direct low-level I/O. */
    char buf[4096], *p;
    ssize_t nread;

    /* Send the SYNC command. */
    if (FUNC8(fd,"SYNC\r\n",6) != 6) {
        FUNC1(stderr,"Error writing to master\n");
        FUNC0(1);
    }

    /* Read $<payload>\r\n, making sure to read just up to "\n" */
    p = buf;
    while(1) {
        nread = FUNC4(fd,p,1);
        if (nread <= 0) {
            FUNC1(stderr,"Error reading bulk length while SYNCing\n");
            FUNC0(1);
        }
        if (*p == '\n' && p != buf) break;
        if (*p != '\n') p++;
    }
    *p = '\0';
    if (buf[0] == '-') {
        FUNC3("SYNC with master failed: %s\n", buf);
        FUNC0(1);
    }
    if (FUNC6(buf+1,"EOF:",4) == 0 && FUNC5(buf+5) >= RDB_EOF_MARK_SIZE) {
        FUNC2(out_eof, buf+5, RDB_EOF_MARK_SIZE);
        return 0;
    }
    return FUNC7(buf+1,NULL,10);
}