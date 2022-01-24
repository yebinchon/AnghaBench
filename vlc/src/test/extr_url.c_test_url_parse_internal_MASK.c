#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* psz_protocol; char const* psz_username; char const* psz_password; char const* psz_host; unsigned int i_port; char const* psz_path; char const* psz_option; } ;
typedef  TYPE_1__ vlc_url_t ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int exitcode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char const*) ; 
 int FUNC5 (TYPE_1__*,char const*) ; 

__attribute__((used)) static void FUNC6(const char *in, bool fixup,
                                    const char *protocol,
                                    const char *user, const char *pass,
                                    const char *host, unsigned port,
                                    const char *path, const char *option)
{
    vlc_url_t url;
    int ret = fixup ? FUNC5(&url, in) : FUNC4(&url, in);

    /* XXX: only checking that the port-part is parsed correctly, and
     *      equal to 0, is currently not supported due to the below. */
    if (protocol == NULL && user == NULL && pass == NULL && host == NULL
     && port == 0 && path == NULL && option == NULL)
    {
        FUNC3(&url);

        if (ret != -1)
        {
            FUNC1(stderr, "\"%s\" accepted, expected rejection\n", in);
            FUNC0(2);
        }
        return;
    }

    FUNC2(in, protocol, url.psz_protocol);
    FUNC2(in, user, url.psz_username);
    FUNC2(in, pass, url.psz_password);

    if (ret != 0 && errno == ENOSYS)
    {
        FUNC2(in, NULL, url.psz_host);
        exitcode = 77;
    }
    else
        FUNC2(in, url.psz_host, host);

    if (url.i_port != port)
    {
        FUNC1(stderr, "\"%s\" returned %u, expected %u\n", in, url.i_port,
                port);
        FUNC0(2);
    }

    FUNC2(in, path, url.psz_path);
    FUNC2(in, option, url.psz_option);
    FUNC3(&url);
}