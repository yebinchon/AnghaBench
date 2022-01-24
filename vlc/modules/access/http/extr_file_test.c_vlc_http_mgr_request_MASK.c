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
typedef  int time_t ;
struct vlc_http_msg {int dummy; } ;
struct vlc_http_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ etags ; 
 scalar_t__ lang ; 
 scalar_t__ offset ; 
 int secure ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  stream ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char**,int) ; 
 char* ua ; 
 char* FUNC5 (struct vlc_http_msg const*) ; 
 char* FUNC6 (struct vlc_http_msg const*) ; 
 char* FUNC7 (struct vlc_http_msg const*,char*) ; 
 struct vlc_http_msg* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (struct vlc_http_msg const*) ; 
 char* FUNC10 (struct vlc_http_msg const*) ; 
 char* FUNC11 (struct vlc_http_msg const*) ; 
 int FUNC12 (struct vlc_http_msg const*,char*) ; 

struct vlc_http_msg *FUNC13(struct vlc_http_mgr *mgr, bool https,
                                          const char *host, unsigned port,
                                          const struct vlc_http_msg *req)
{
    const char *str;
    char *end;

    FUNC0(https == secure);
    FUNC0(mgr == NULL);
    FUNC0(!FUNC1(host, "www.example.com"));
    FUNC0(port == 8443);

    str = FUNC9(req);
    FUNC0(!FUNC1(str, "GET"));
    str = FUNC11(req);
    FUNC0(!FUNC1(str, secure ? "https" : "http"));
    str = FUNC6(req);
    FUNC0(!FUNC1(str, "www.example.com:8443"));
    str = FUNC10(req);
    FUNC0(!FUNC1(str, "/dir/file.ext?a=b"));
    str = FUNC5(req);
    FUNC0(!FUNC1(str, ua));
    str = FUNC7(req, "Referer");
    FUNC0(str == NULL);
    str = FUNC7(req, "Accept");
    FUNC0(str == NULL || FUNC3(str, "*/*") != NULL);

    str = FUNC7(req, "Accept-Language");
    /* This test case does not call setlocale(), so en_US can be assumed. */
    if (lang != 0)
    {
        FUNC0(str != NULL && FUNC2(str, "en_US", 5) == 0);
        if (lang > 0)
            lang--;
    }
    else
        FUNC0(str == NULL);

    str = FUNC7(req, "Range");
    FUNC0(str != NULL && !FUNC2(str, "bytes=", 6)
        && FUNC4(str + 6, &end, 10) == offset && *end == '-');

    time_t mtime = FUNC12(req, "If-Unmodified-Since");
    str = FUNC7(req, "If-Match");

    if (etags)
    {
        if (offset != 0)
            FUNC0(str != NULL && !FUNC1(str, "\"foobar42\""));
        else
        if (str != NULL)
            FUNC0(FUNC1(str, "*") || FUNC1(str, "\"foobar42\""));
    }
    else
    {
        if (offset != 0)
            FUNC0(mtime == 1382386402);
    }

    return FUNC8(&stream);
}