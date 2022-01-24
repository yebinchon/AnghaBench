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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int,char*,char*,char const*,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 

int (FUNC9)(vlc_object_t *obj, const char *host, int serv)
{
    const char *realhost;
    int realserv;

    char *socks = FUNC8(obj, "socks");
    if (socks != NULL)
    {
        realhost = socks;

        char *p = FUNC7(socks, ':');
        if (p != NULL)
        {
            *(p++) = '\0';
            realserv = FUNC1(p);
        }
        else
            realserv = 1080;

        FUNC3(obj, "net: connecting to %s port %d (SOCKS) "
                "for %s port %d", realhost, realserv, host, serv);
    }
    else
    {
        FUNC3(obj, "net: connecting to %s port %d", host, serv);
        realhost = host;
        realserv = serv;
    }

    int fd = FUNC6(obj, realhost, realserv, SOCK_STREAM, IPPROTO_TCP);

    if (socks != NULL && fd != -1)
    {
        /* NOTE: psz_socks already free'd! */
        char *user = FUNC8(obj, "socks-user");
        char *pwd = FUNC8(obj, "socks-pwd");

        if (FUNC0(obj, fd, 5, user, pwd, host, serv))
        {
            FUNC4(obj, "SOCKS handshake failed");
            FUNC5(fd);
            fd = -1;
        }

        FUNC2(pwd);
        FUNC2(user);
    }

    return fd;
}