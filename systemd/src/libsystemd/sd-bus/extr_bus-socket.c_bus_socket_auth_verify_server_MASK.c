#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int rbuffer_size; int auth_rbegin; scalar_t__ auth; int can_fds; scalar_t__ rbuffer; int /*<<< orphan*/  accept_fd; } ;
typedef  TYPE_1__ sd_bus ;

/* Variables and functions */
 scalar_t__ BUS_AUTH_ANONYMOUS ; 
 scalar_t__ BUS_AUTH_EXTERNAL ; 
 int EIO ; 
 scalar_t__ _BUS_AUTH_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (char const*,size_t,char*) ; 
 scalar_t__ FUNC6 (char const*,size_t,char*) ; 
 char* FUNC7 (char const*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int) ; 
 size_t FUNC9 (char*) ; 
 int FUNC10 (TYPE_1__*,char const*,size_t) ; 
 int FUNC11 (TYPE_1__*,char const*,size_t) ; 

__attribute__((used)) static int FUNC12(sd_bus *b) {
        char *e;
        const char *line;
        size_t l;
        bool processed = false;
        int r;

        FUNC0(b);

        if (b->rbuffer_size < 1)
                return 0;

        /* First char must be a NUL byte */
        if (*(char*) b->rbuffer != 0)
                return -EIO;

        if (b->rbuffer_size < 3)
                return 0;

        /* Begin with the first line */
        if (b->auth_rbegin <= 0)
                b->auth_rbegin = 1;

        for (;;) {
                /* Check if line is complete */
                line = (char*) b->rbuffer + b->auth_rbegin;
                e = FUNC7(line, b->rbuffer_size - b->auth_rbegin, "\r\n", 2);
                if (!e)
                        return processed;

                l = e - line;

                if (FUNC5(line, l, "AUTH ANONYMOUS")) {

                        r = FUNC10(b,
                                                   line + FUNC9("AUTH ANONYMOUS"),
                                                   l - FUNC9("AUTH ANONYMOUS"));
                        if (r < 0)
                                return r;
                        if (r == 0)
                                r = FUNC2(b, "REJECTED\r\n");
                        else {
                                b->auth = BUS_AUTH_ANONYMOUS;
                                if (l <= FUNC9("AUTH ANONYMOUS"))
                                        r = FUNC2(b, "DATA\r\n");
                                else
                                        r = FUNC3(b);
                        }

                } else if (FUNC5(line, l, "AUTH EXTERNAL")) {

                        r = FUNC11(b,
                                                  line + FUNC9("AUTH EXTERNAL"),
                                                  l - FUNC9("AUTH EXTERNAL"));
                        if (r < 0)
                                return r;
                        if (r == 0)
                                r = FUNC2(b, "REJECTED\r\n");
                        else {
                                b->auth = BUS_AUTH_EXTERNAL;
                                if (l <= FUNC9("AUTH EXTERNAL"))
                                        r = FUNC2(b, "DATA\r\n");
                                else
                                        r = FUNC3(b);
                        }

                } else if (FUNC5(line, l, "AUTH"))
                        r = FUNC2(b, "REJECTED EXTERNAL ANONYMOUS\r\n");
                else if (FUNC6(line, l, "CANCEL") ||
                         FUNC5(line, l, "ERROR")) {

                        b->auth = _BUS_AUTH_INVALID;
                        r = FUNC2(b, "REJECTED\r\n");

                } else if (FUNC6(line, l, "BEGIN")) {

                        if (b->auth == _BUS_AUTH_INVALID)
                                r = FUNC2(b, "ERROR\r\n");
                        else {
                                /* We can't leave from the auth phase
                                 * before we haven't written
                                 * everything queued, so let's check
                                 * that */

                                if (FUNC1(b))
                                        return 1;

                                b->rbuffer_size -= (e + 2 - (char*) b->rbuffer);
                                FUNC8(b->rbuffer, e + 2, b->rbuffer_size);
                                return FUNC4(b);
                        }

                } else if (FUNC5(line, l, "DATA")) {

                        if (b->auth == _BUS_AUTH_INVALID)
                                r = FUNC2(b, "ERROR\r\n");
                        else {
                                if (b->auth == BUS_AUTH_ANONYMOUS)
                                        r = FUNC10(b, line + 4, l - 4);
                                else
                                        r = FUNC11(b, line + 4, l - 4);

                                if (r < 0)
                                        return r;
                                if (r == 0) {
                                        b->auth = _BUS_AUTH_INVALID;
                                        r = FUNC2(b, "REJECTED\r\n");
                                } else
                                        r = FUNC3(b);
                        }
                } else if (FUNC6(line, l, "NEGOTIATE_UNIX_FD")) {
                        if (b->auth == _BUS_AUTH_INVALID || !b->accept_fd)
                                r = FUNC2(b, "ERROR\r\n");
                        else {
                                b->can_fds = true;
                                r = FUNC2(b, "AGREE_UNIX_FD\r\n");
                        }
                } else
                        r = FUNC2(b, "ERROR\r\n");

                if (r < 0)
                        return r;

                b->auth_rbegin = e + 2 - (char*) b->rbuffer;

                processed = true;
        }
}