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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,char*,unsigned int*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (int,char const*,size_t) ; 

__attribute__((used)) static void FUNC9(int fd)
{
    char buf[1024];
    size_t buflen = 0;
    ssize_t val;

    /* Read request (and possibly more) */
    while (FUNC6(buf, "\r\n\r\n", buflen) == NULL)
    {
        val = FUNC1(fd, buf + buflen, sizeof (buf) - buflen - 1, 0);
        if (val <= 0)
            FUNC0(!"Incomplete request");
        buflen += val;
    }

    buf[buflen] = '\0';

    char host[64];
    unsigned port, ver;
    int offset;

    FUNC0(FUNC3(buf, "CONNECT %63[^:]:%u HTTP/1.%1u%n", host, &port, &ver,
                  &offset) == 3);
    FUNC0(!FUNC4(host, "www.example.com"));
    FUNC0(port == 443);
    FUNC0(ver == 1);

    FUNC0(FUNC3(buf + offset + 2, "Host: %63[^:]:%u", host, &port) == 2);
    FUNC0(!FUNC4(host, "www.example.com"));
    FUNC0(port == 443);

    FUNC0(FUNC7(buf, "\r\nProxy-Authorization: Basic "
                  "QWxhZGRpbjpvcGVuIHNlc2FtZQ==\r\n") != NULL);

    const char resp[] = "HTTP/1.1 500 Failure\r\n\r\n";

    val = FUNC8(fd, resp, FUNC5(resp));
    FUNC0((size_t)val == FUNC5(resp));
    FUNC2(fd, SHUT_WR);
}